<?php
/**
 * The following variables are available in this template:
 * - $this: the CrudCode object
 */
?>
<?php echo "<?php\n"; ?>
/* @var $this <?php echo $this->getControllerClass(); ?> */
/* @var $model <?php echo $this->getModelClass(); ?> */

<?php
$nameColumn = $this->guessNameColumn($this->tableSchema->columns);
$label = $this->pluralize($this->class2name($this->modelClass));
echo "\$this->breadcrumbs=array(
	'$label'=>array('index'),
	\$model->{$nameColumn},
);\n";
?>

$this->menu=array(
array('label'=>'List <?php echo $this->modelClass; ?>', 'url'=>array('index')),
array('label'=>'Create <?php echo $this->modelClass; ?>', 'url'=>array('create')),

);
?>
<div class="row">
    <!-- page header -->
    <div class="col-lg-12">
        <h1 class="page-header">View <?php echo $this->modelClass . " #<?php echo \$model->{$this->tableSchema->primaryKey}; ?>"; ?></h1>
    </div>
    <!--end page header -->
</div>

<div class="row">
    <div class="col-lg-12">
        <!-- Advanced Tables -->
        <div class="panel panel-default">
            <div class="panel-heading">

            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <?php echo "<?php"; ?> $this->widget('zii.widgets.CDetailView', array(
                    'data'=>$model,
                    'attributes'=>array(
                    <?php
                    foreach ($this->tableSchema->columns as $column)
                        echo "\t\t'" . $column->name . "',\n";
                    ?>
                    ),
                    )); ?>

                </div>
            </div>
        </div>
    </div>
</div>    
