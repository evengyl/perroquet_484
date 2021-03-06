<?
Class admin_verify_new_announce extends base_module
{

	public function __construct(&$_app)
	{		
		parent::__construct($_app);

		$res_sql_not_validate_announce = $this->get_list_announce_not_validate_by_admin();

		$this->assign_var("list_announce_not_validate_by_admin", $res_sql_not_validate_announce)->render_tpl();
	}


	private function get_list_announce_not_validate_by_admin()
	{
		$sql_not_validate_announce = new stdClass();
		$sql_not_validate_announce->table = 'annonces';
		$sql_not_validate_announce->data = "id, title, sub_title, id_user, user_name, user_last_name";
		$sql_not_validate_announce->order = ["id"];
		$sql_not_validate_announce->where = ["user_validate = $1 AND admin_validate = $2", [1, 0] ];
		$res_sql_not_validate_announce = $this->_app->sql->select($sql_not_validate_announce);

		if(!empty($res_sql_not_validate_announce))
			return $res_sql_not_validate_announce;

		else
			return false;
	}
}
