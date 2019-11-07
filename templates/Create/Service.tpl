<?php


namespace {namespace}\{name}\Create;


use {namespace}\{name}\DTO\Request;
use {namespace}\{name}\{name};

class Service
{
    /**
     * @var Request
     */
    private $request;

    /**
     * @var {name}
     */
    private ${lower_name};

    /**
     * @param Request $request
     * @param {name} ${lower_name}
     */
    public function __construct(Request $request, {name} ${lower_name})
    {
        $this->request = $request;
        $this->{lower_name} = ${lower_name};
    }

    /**
     * @return mixed
     */
    public function behave()
    {
        return $this->{lower_name}->create($this->request->validated());
    }
}
