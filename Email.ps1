$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Username = "<gmail@gmail.com>"
$Password = "<password>"

$a = Get-Content PATH\list.txt

foreach ($to in $a) {

$subject = "<Subject>"
$body = Get-Content PATH\message.txt

$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.body = $body
$message.to.add($to)
$message.from = $username

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
#$smtp.send($message)
}
