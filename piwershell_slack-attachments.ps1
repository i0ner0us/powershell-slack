Set-StrictMode -Version Latest

$wehookUri = "WEBHOOK_URL"

$payload = @{
	"channel" = "#slack-alert-dev"
	"icon_emoji" = ":bomb:"
	"username" = "i0ner0us"
    "attachments" = @(@{
        "pretext" = "this is pretext"
        "text" = "this is text in the attachment"
        "color" = "#ff0000"
    })
}

Invoke-WebRequest `
	-Body (ConvertTo-Json -Compress -InputObject $payload) `
	-Method Post `
	-Uri $wehookUri | Out-Null�
