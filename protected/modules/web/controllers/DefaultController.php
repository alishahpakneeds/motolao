<?php

class DefaultController extends Controller {

    /**
     * redirect site to for having www  lazmi
     * @param type $action
     * @return type
     */
    public function beforeAction($action) {
        return parent::beforeAction($action);
    }

    public $layout = "//layouts/main";

    public function actionIndex() {
        $this->page_key = "home";
        $this->render('//default/index');
    }

    public function actionTeam() {
        $this->page_key = "team";
        $this->render('//default/team');
    }

    /**
     * flleet
     */
    public function actionFleet() {
        $this->page_key = "fleet";
        $this->render('//default/fleet');
    }

    public function actionFaq() {
        $this->page_key = "faq";
        $this->render('//default/faq');
    }

    /**
     * 
     */
    public function actionGallery() {
        $this->page_key = "gallery";
        $this->render('//default/gallery');
    }

    /**
     * 
     */
    public function actionContact() {
        $this->page_key = "contacts";
        $model = new ContactForm;

        if (isset($_POST['ContactForm'])) {
            $model->attributes = $_POST['ContactForm'];
        }
        $this->render('//default/contact', array("model" => $model));
    }

    /**
     * dairies
     */
    public function actionDairies() {
        $this->page_key = "daries";
        $this->render('//default/dairies');
    }

    /**
     * 
     */
    public function actionTerms() {
        $this->page_key = "terms";
        $model = new ContactForm;

        if (isset($_POST['ContactForm'])) {
            $model->attributes = $_POST['ContactForm'];
        }
        $this->render('//default/terms', array("model" => $model));
    }

    /**
     * 
     */
    public function actionAbout() {
        $this->page_key = "about";
        $this->render('//default/about');
    }

    /**
     * 
     */
    public function actionSitemap() {
        $this->page_key = "sitemap";
        $this->render('//default/sitemap');
    }

    public function actionError() {
        $error = Yii::app()->errorHandler->error;
        if (!empty($error)) {


            $body = "<div style='color:red'>url= " . Yii::app()->request->hostInfo . Yii::app()->request->url . "<br/>";
            $body = $body . "code= " . $error['code'] . "<br/>";
            $body = $body . "type= " . $error['type'] . "<br/>";
            $body = $body . "message= " . $error['message'] . "<br/>";
            $body = $body . "file= " . $error['file'] . "<br/>";
            $body = $body . "line= " . $error['line'] . "<br/>";
            $body = $body . "Browser= " . Yii::app()->request->userAgent . "<br/>";
            $body = $body . "trace= " . $error['trace'] . "<br/></div>";


            Yii::log(str_replace("<br/>", "\n", $body), "info");


            $this->render('//default/error', array('error' => $body));
        } else
            throw new CHttpException(404, 'Page not found.');
    }

}
