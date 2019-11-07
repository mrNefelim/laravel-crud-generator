<?php

class CrudGenerator
{
    /**
     * @var Template[] $templates
     * @var string $name
     * @var string $path
     */
    private $templates;
    private $name;
    private $namespace;
    private $path;

    public function __construct($name, $namespace, $path)
    {
        $this->name = $name;
        $this->namespace = $namespace ?? 'Bundle';
        $this->path = $path ?? __DIR__;
    }

    public function run()
    {
        $this->createServices();

        /**
         * @var Template $template
         */
        foreach ($this->templates as $template) {
            $template
                ->setNamespace($this->namespace)
                ->setName($this->name)
                ->create();
        }
    }


    private function createServices()
    {
        $services = ['Create', 'Update', 'Delete', 'GetList'];

        foreach ($services as $service) {
            $this->templates[] =
                (new Template())
                    ->setInput($this->templatePath($service . '/Service.tpl'))
                    ->setOutput($this->publicPath($service . '/Service.php'));
        }

        $this->templates[] =
            (new Template())
                ->setInput($this->templatePath('Model.tpl'))
                ->setOutput($this->publicPath($this->name . '.php'));

        $this->templates[] =
            (new Template())
                ->setInput($this->templatePath('Controllers/Controller.tpl'))
                ->setOutput($this->publicPath('Controllers/Controller.php'));

        $this->templates[] =
            (new Template())
                ->setInput($this->templatePath('DTO/Request.tpl'))
                ->setOutput($this->publicPath('DTO/Request.php'));

    }

    private function templatePath(string $template)
    {
        return sprintf('%s/templates/%s', __DIR__, $template);
    }

    private function publicPath(string $public)
    {
        return sprintf('%s/%s/%s', $this->path, $this->name, $public);
    }
}