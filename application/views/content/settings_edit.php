<script type="text/javascript" src="<?= base_url() ?>global/admin/ckeditor/ckeditor.js"></script>

<script>
    $(document).ready(function(){

        CKEDITOR.replace( 'textEditor', {
        disallowedContent : 'img{width,height}',
        customConfig: '../ckeditor/config.js',
        uiColor: '#3592E0',
        codeSnippet_theme: 'atelier-dune.light'
    });
    });

</script>
<div class="row">
    <div class="col-sm-3 col-md-2 sidebar">
        <ul class="nav nav-sidebar">
            <li><a class="btn btn-info" href="<?= base_url() ?>mailing_settings/send_mail">Send mail Now</a></li>
        </ul>
    </div>
    <div class="col-sm-9 col-sm-offset-3 col-md-6 col-md-offset-2 main">
        <h1 class="page-header">Edit Email Template</h1>

        <?= form_open_multipart(current_url(), array('class' => 'form-horizontal')) ?>


        <?php if($this->session->flashdata('success_msg')){ ?>
            <p class="alert alert-info">
                <?php echo $this->session->flashdata('success_msg'); ?>
            </p>
        <?php } ?>


        <div class="form-group">
            <label class="control-label" for="activation_mail">Activation Mail</label>
            <input type="text" name="activation_mail" class="form-control" value="<?= set_value('activation_mail', $activation_mail) ?>"
                   placeholder="activation_mail">

            <p class="text-red"><?= form_error('activation_mail'); ?></p>
        </div>

        <div class="form-group">
            <label class="control-label" for="activation_subject">Activation subject</label>
            <input type="text" name="activation_subject" class="form-control"  value="<?= set_value('activation_subject', $activation_subject) ?>"
                   placeholder="activation_subject">

            <p class="text-red"><?= form_error('activation_subject'); ?></p>
        </div>

        <div class="form-group">
            <label class="control-label" for="activation_content">Activation Content</label>
            <textarea  rows="5" cols="30" id="textEditor" name="activation_content" class="form-control"
                                           placeholder="activation_content"><?= set_value('activation_content',$activation_content) ?></textarea>
            <p class="text-red"><?= form_error('activation_content'); ?></p>
        </div>

        <input class="btn btn-primary" type="submit" name="save" value="Edit mail template"/>

        <?php echo form_close(); ?>
    </div>
</div>

