<?php


namespace {namespace}\{name}\GetList;


use {namespace}\{name}\{name};

class Service
{
    /**
     * @var {name}
     */
    private ${lower_name};

    /**
     * @param {name} ${lower_name}
     */
    public function __construct({name} ${lower_name})
    {
        $this->{lower_name} = ${lower_name};
    }

    /**
     * @return mixed
     */
    public function behave()
    {
        return $this->{lower_name}->all();
    }
}
