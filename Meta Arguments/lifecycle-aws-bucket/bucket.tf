resource "aws_s3_bucket" "lifecycle" {
  bucket = "udemy-metaarguments-lifecycle"

    lifecycle {
        # create_before_destroy = true # constroi primeiro depois destroi a anterior
        #  prevent_destroy = true # Não deixa destruir o recurso
        ignore_changes = [tags,]
    }

    tags = {
      aula = "lifecycle"
      owner = "Edwanderson"
    }

}
