--
--  Author: Hari Sekhon
--  Date: 2020-08-06 18:07:25 +0100 (Thu, 06 Aug 2020)
--
--  vim:ts=2:sts=2:sw=2:et:filetype=sql
--
--  https://github.com/harisekhon/sql
--
--  License: see accompanying Hari Sekhon LICENSE file
--
--  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
--
--  https://www.linkedin.com/in/harisekhon
--

-- Show PostgreSQL client connection default settings eg. client_min_messages, transaction_isolation / default_transaction_isolation, statement_timeout, lock_timeout, TimeZone, lc_ctype, server_encoding, search_path
--
-- Requires PostgreSQL 9.5+
--
-- Tested on PostgreSQL 9.5, 9.6, 10.x 11.x, 12.x

-- https://www.postgresql.org/docs/12/runtime-config-client.html

SELECT
  name,
  setting,
  -- category,
  vartype,
  short_desc,
  enumvals,
  source,
  min_val,
  max_val,
  boot_val,
  reset_val,
  pending_restart
FROM
  pg_settings
WHERE
  -- Client Connection Defaults / Statement Behavior
  -- Client Connection Defaults / Locale and Formatting
  -- Client Connection Defaults / Other Defaults
  -- Client Connection Defaults / Shared Library Preloading
  category ILIKE '%Client Connection Defaults%';
