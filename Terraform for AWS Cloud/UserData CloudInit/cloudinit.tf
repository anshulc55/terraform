data "template_file" "install-apache" {
    template = file("init.cfg")
}

data "template_cloudinit_config" "install-apache-config" {
    gzip          = false
    base64_encode = false

    part {
        filename     = "init.cfg"
        content_type = "text/cloud-config"
        content      = data.template_file.install-apache.rendered
    }
}