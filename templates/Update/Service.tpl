<?php


namespace {namespace}\{name}\Update;


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
     * @param int $id
     * @return mixed
     */
    public function behave(int $id)
    {
        return
            $this->{lower_name}->find($id)->update($this->request->validated());
    }
}
