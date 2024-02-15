variable "personal_cloudflare" {
  type = object({
    zone_id = string
    public_ip = string
  })
}