resource "cloudflare_record" "terraform_managed_resource_books" {
  name    = "books"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_cloud" {
  name    = "cloud"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_code" {
  name    = "code"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_dash" {
  name    = "dash"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_integration" {
  name    = "integration"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_movies" {
  name    = "movies"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_radarr" {
  name    = "radarr"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_sonarr" {
  name    = "sonarr"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_vault" {
  name    = "vault"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}

resource "cloudflare_record" "terraform_managed_resource_yacht" {
  name    = "yacht"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = var.personal_cloudflare.public_ip
  zone_id = var.personal_cloudflare.zone_id
}
