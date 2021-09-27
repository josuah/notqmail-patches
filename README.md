Notqmail patch checker
======================
For maintaining patch compatibility and still permit the source to evolve, this Makefile builds notqmail for each combination of patch and branch below.

	running at 2021-09-27 14:54:20 on OpenBSD lap1 6.9 GENERIC.MP#4 amd64

<table>
	<tr>
		<th>patch</th>
		<th><a href=/8c53cd40a3329d682a905decb1f8734fa1ba2e9a>master</a></th>
		<th><a href=/e77f33bd5f614e967b0716a72dd706462d36a477>notqmail-1.08</a></th>
		<th><a href=/aab15b1fea8a6c48953bf152a334d6a1840184c3>notqmail-1.07</a></th>
	</tr>
	<tr>
		<td>badmailfrom-wildcard</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-badmailfrom-wildcard.log>success</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-badmailfrom-wildcard.log>success</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-badmailfrom-wildcard.log>success</a></td>
	</tr>
	<tr>
		<td>badmailfrom-x-relayclient</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-badmailfrom-x-relayclient.log>success</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-badmailfrom-x-relayclient.log>success</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-badmailfrom-x-relayclient.log>success</a></td>
	</tr>
	<tr>
		<td>big-concurrency</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-big-concurrency.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-big-concurrency.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-big-concurrency.log>failure</a></td>
	</tr>
	<tr>
		<td>big-todo</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-big-todo.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-big-todo.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-big-todo.log>success</a></td>
	</tr>
	<tr>
		<td>netqmail-spp</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-netqmail-spp.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-netqmail-spp.log>success</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-netqmail-spp.log>success</a></td>
	</tr>
	<tr>
		<td>rcptcheck</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-rcptcheck.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-rcptcheck.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-rcptcheck.log>success</a></td>
	</tr>
	<tr>
		<td>smtp-auth</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-smtp-auth.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-smtp-auth.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-smtp-auth.log>failure</a></td>
	</tr>
	<tr>
		<td>smtp-tls</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-smtp-tls.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-smtp-tls.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-smtp-tls.log>failure</a></td>
	</tr>
	<tr>
		<td>smtpd-logging</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-smtpd-logging.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-smtpd-logging.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-smtpd-logging.log>success</a></td>
	</tr>
	<tr>
		<td>smtpd-spf</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-smtpd-spf.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-smtpd-spf.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-smtpd-spf.log>failure</a></td>
	</tr>
	<tr>
		<td>spp-smtpauth-eh</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-spp-smtpauth-eh.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-spp-smtpauth-eh.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-spp-smtpauth-eh.log>failure</a></td>
	</tr>
	<tr>
		<td>spp-smtpauth-tls-20060105</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-spp-smtpauth-tls-20060105.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-spp-smtpauth-tls-20060105.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-spp-smtpauth-tls-20060105.log>failure</a></td>
	</tr>
	<tr>
		<td>spp-smtpauth</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-spp-smtpauth.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-spp-smtpauth.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-spp-smtpauth.log>failure</a></td>
	</tr>
	<tr>
		<td>spp</td>
		<td><a href=notqmail-8c53cd40a3329d682a905decb1f8734fa1ba2e9a-spp.log>failure</a></td>
		<td><a href=notqmail-e77f33bd5f614e967b0716a72dd706462d36a477-spp.log>failure</a></td>
		<td><a href=notqmail-aab15b1fea8a6c48953bf152a334d6a1840184c3-spp.log>failure</a></td>
	</tr>
</table>
