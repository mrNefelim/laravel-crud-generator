<?php


class Template
{
    private $template;
    private $namespace;
    private $name;
    private $input;
    private $output;

    public function setNamespace($namespace)
    {
        $this->namespace = $namespace;

        return $this;
    }

    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    public function setInput($input)
    {
        $this->input = $input;

        return $this;
    }

    public function setOutput($output)
    {
        $this->output = $output;

        return $this;
    }

    public function fill()
    {
        return str_replace(
            [
                '{namespace}',
                '{name}',
                '{lower_name}',
            ],
            [
                $this->namespace,
                $this->name,
                strtolower($this->name),
            ],
            $this->get($this->input)
        );
    }

    public function create()
    {
        $this->put(
            $this->fill(),
            $this->output
        );
    }

    private function get(string $path)
    {
        return file_get_contents($path);
    }

    private function put(string $template, string $path)
    {
        $this->createFolder(dirname($path));

        return file_put_contents($path, $template);
    }

    private function createFolder(string $path)
    {
        if (!file_exists($path)) {
            mkdir($path, 0755, true);
        }
    }
}