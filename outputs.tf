output "id" {
  description = "The route identifier."
  value       = try(aws_apigatewayv2_route.this[0].id, null)
}
