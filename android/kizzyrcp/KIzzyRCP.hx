package android.kizzyrcp;

import lime.system.JNI;

class KizzyRCP
{
	private var kizzyRcpService:Dynamic;

	/**
	 * Create Kizzy RCP.
	 * 
	 * @param token user account token.
	 */
	public function new(token:String)
	{
		var kizzyRcpService_jni:Dynamic = JNI.createStaticMethod("com/my/kizzyrpc/KizzyRPCservice", "<init>", "(Ljava/lang/String;)V");
		kizzyRcpService = kizzyRcpService_jni(token);
	}

	/**
	 * Close Kizzy RCP.
	 */
	public function closeRPC():Void
	{
		var closeRPC_jni:Dynamic = JNI.createMemberMethod("com/my/kizzyrpc/KizzyRPCservice", "closeRPC", "()V")
		closeRPC_jni();
	}

	/**
	 * The Application ID for the RCP.
	 *
	 * @param id the application id that will be seted to kizzy.
	 */
	public function setApplicationId(id:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setApplicationId", "(Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [id]);
		return this;
	}

	/**
	 * The Activity name of Kizzy RCP.
	 *
	 * @param name the name of the activity.
	 */
	public function setName(name:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setName", "(Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [name]);
		return this;
	}

	/**
	 * The Activity details of Kizzy RCP.
	 *
	 * @param details the details of the activity.
	 */
	public function setDetails(details:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setDetails", "(Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [details]);
		return this;
	}

	/**
	 * The Activity state of Kizzy RCP.
	 *
	 * @param state the state.
	 */
	public function setState(state:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setState", "(Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [state]);
		return this;
	}

	/**
	 * The Activity large image of Kizzy RCP.
	 * 
	 * How to get the Image ?
	 * Upload image to any discord chat and copy its media link it should look like "https://media.discordapp.net/attachments/90202992002/xyz.png"
	 * now just use the image link from attachments part so it would look like: setLargeImage("attachments/90202992002/xyz.png");
	 *
	 * @param image the image.
	 */
	public function setLargeImage(image:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setLargeImage", "(Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [image]);
		return this;
	}

	/**
	 * The Activity large image of Kizzy RCP.
	 * 
	 * How to get the Image ?
	 * Upload image to any discord chat and copy its media link it should look like "https://media.discordapp.net/attachments/90202992002/xyz.png"
	 * now just use the image link from attachments part so it would look like: setSmallImage("attachments/90202992002/xyz.png");
	 *
	 * @param image the image.
	 */
	public function setSmallImage(image:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setSmallImage", "(Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [image]);
		return this;
	}

	/**
	 * The Activity types of Kizzy RCP.
	 *
	 * @param type the type that can be.
	 */
	public function setType(type:KizzyActivityTypes):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setType", "(I)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [type]);
		return this;
	}

	/**
	 * The Activity Status type on the profile of Kizzy RCP.
	 *
	 * @param status it can be online, idle, dnd.
	 */
	public function setStatus(state:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setStatus", "(Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [status]);
		return this;
	}

	/**
	 * The Activity Button 1 of Kizzy RCP.
	 *
	 * @param button_label the button label.
	 * @param link the link that will redirect you to the respective site.
	 */
	public function setButton1(button_label:String, link:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setButton1", "(Ljava/lang/String;Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [button_label, link]);
		return this;
	}

	/**
	 * The Activity Button 2 of Kizzy RCP.
	 *
	 * @param button_label the button label.
	 * @param link the link that will redirect you to the respective site.
	 */
	public function setButton2(button_label:String, link:String):KizzyRCP
	{
		JNI.callMember(getMemberMethod("setButton2", "(Ljava/lang/String;Ljava/lang/String;)Lorg/haxe/extension/KizzyRCP;"), kizzyRcpService, [button_label, link]);
		return this;
	}

	/**
	 * Build Kizzy RCP.
	 */
	public function buildRPC():Void
	{
		var build_jni:Dynamic = JNI.createMemberMethod("com/my/kizzyrpc/KizzyRPCservice", "build", "()V")
		build_jni();
	}

	private function getMemberMethod(name:String, sig:String):KizzyRCP
	{
		return JNI.createMemberMethod("com/my/kizzyrpc/KizzyRPCservice", name, sig);
	}
}

abstract KizzyActivityTypes(Int) to Int from Int
{
	public static final Playing = 0;
	public static final Streaming = 1;
	public static final Listening = 2;
	public static final Watching = 3;
	public static final Competing = 5; // this was needed to be 4, why kizzy, WHY. -jigsaw
}