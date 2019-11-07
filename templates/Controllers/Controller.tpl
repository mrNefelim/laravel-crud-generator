<?php


namespace {namespace}\{name}\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller as BaseController;
use {namespace}\{name}\Create\Service as CreateService;
use {namespace}\{name}\Delete\Service as DeleteService;
use {namespace}\{name}\GetList\Service as GetListService;
use {namespace}\{name}\Update\Service as UpdateService;

class Controller extends BaseController
{
    /**
     * @return Response
     */
    public function view()
    {
        return response()->view('base.components.{lower_name}.index');
    }

    /**
     * @param GetListService $service
     * @return JsonResponse
     */
    public function index(GetListService $service)
    {
        return response()->json($service->behave());
    }

    /**
     * @param CreateService $service
     * @return JsonResponse
     */
    public function create(CreateService $service)
    {
        return response()->json($service->behave());
    }

    /**
     * @param UpdateService $service
     * @param int $id
     * @return JsonResponse
     */
    public function update(UpdateService $service, int $id)
    {
        return response()->json($service->behave($id));
    }

    /**
     * @param DeleteService $service
     * @param int $id
     * @return JsonResponse
     */
    public function delete(DeleteService $service, int $id)
    {
        return response()->json($service->behave($id));
    }
}
