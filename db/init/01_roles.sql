create role cp_postgraphile login password 'some-decent-password';
create role cp_anonymous;
grant cp_anonymous to cp_postgraphile;
create role cp_account;
grant cp_account to cp_postgraphile;