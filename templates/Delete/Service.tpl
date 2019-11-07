<?php


namespace {namespace}\{name}\Delete;


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
     * @param int $id
     * @return mixed
     */
    public function behave(int $id)
    {
        return $this->{lower_name}->find($id)->delete();
    }
}
