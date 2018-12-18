<?
Class security extends base_module
{
	public $_app;

	public function __construct(&$_app)
	{
		$this->_app = $_app;
		$this->_app->module_name = __CLASS__;
		parent::__construct($this->_app);
	}

	public function check_session()
	{
		//on vérifie juste la connexion pour le mettre en mode conneceté la session est déjà remplie
		if(isset($_SESSION['pseudo']))
		{
			$req_sql = new StdClass();
           	$req_sql->table = ["login"];
           	$req_sql->var = ["login"];
           	$req_sql->where = ["login = $1", [$_SESSION['pseudo']]];
			$res_fx = $this->_app->sql->select($req_sql);

			if(isset($res_fx[0]->login))
				Config::$is_connect = 1;
			
			else
				Config::$is_connect = 0;
		}
	}
}
