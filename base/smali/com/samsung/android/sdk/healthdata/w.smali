.class public final Lcom/samsung/android/sdk/healthdata/w;
.super Ljava/lang/Object;
.source "HealthDataStore.java"


# static fields
.field private static b:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:J

.field private static j:J


# instance fields
.field a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/sdk/healthdata/z;

.field private d:Lcom/samsung/android/sdk/healthdata/at;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/samsung/android/sdk/healthdata/ab;

.field private i:Ljava/lang/Boolean;

.field private k:J

.field private final l:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "com.sec.android.app.shealth"

    sput-object v0, Lcom/samsung/android/sdk/healthdata/w;->b:Ljava/lang/String;

    .line 189
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/samsung/android/sdk/healthdata/w;->j:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/healthdata/z;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/samsung/android/sdk/healthdata/ab;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/ab;-><init>(Lcom/samsung/android/sdk/healthdata/w;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    .line 188
    iput-object v2, p0, Lcom/samsung/android/sdk/healthdata/w;->i:Ljava/lang/Boolean;

    .line 190
    sget-wide v0, Lcom/samsung/android/sdk/healthdata/w;->j:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/healthdata/w;->k:J

    .line 438
    iput-object v2, p0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    .line 498
    new-instance v0, Lcom/samsung/android/sdk/healthdata/y;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/y;-><init>(Lcom/samsung/android/sdk/healthdata/w;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->l:Landroid/content/ServiceConnection;

    .line 250
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    .line 251
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/w;->c:Lcom/samsung/android/sdk/healthdata/z;

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 256
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const-string v1, "com.samsung.android.health.platform_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "com.samsung.android.sdkapp.health"

    sput-object v0, Lcom/samsung/android/sdk/healthdata/w;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 265
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 170
    sput-wide p0, Lcom/samsung/android/sdk/healthdata/w;->h:J

    return-wide p0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/healthdata/w;J)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 5

    .prologue
    .line 170
    .line 2448
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->d:Lcom/samsung/android/sdk/healthdata/at;

    .line 2451
    const-string v1, "HealthDataStore"

    const-string v2, "Waiting for initialization of Health framework ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    if-eqz v1, :cond_0

    .line 2454
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    invoke-interface {v1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->cancel()V

    .line 2457
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 2458
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/internal/healthdata/t;->getAsyncResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v2

    .line 2459
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, p1, p2}, Lcom/samsung/android/sdk/healthdata/at;->waitForInit2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;J)V

    .line 2460
    iput-object v2, p0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    .line 2462
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    new-instance v1, Lcom/samsung/android/sdk/healthdata/x;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/healthdata/x;-><init>(Lcom/samsung/android/sdk/healthdata/w;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->setResultListener(Lcom/samsung/android/sdk/healthdata/aj;)V

    .line 2476
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2477
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2478
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/android/sdk/healthdata/ab;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2480
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    .line 170
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/healthdata/w;Lcom/samsung/android/sdk/healthdata/at;)Lcom/samsung/android/sdk/healthdata/at;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/w;->d:Lcom/samsung/android/sdk/healthdata/at;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->c:Lcom/samsung/android/sdk/healthdata/z;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 170
    sput-object p0, Lcom/samsung/android/sdk/healthdata/w;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/healthdata/w;I)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 170
    .line 2580
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->c:Lcom/samsung/android/sdk/healthdata/z;

    if-eqz v0, :cond_1

    .line 2583
    const-string v0, "HealthDataStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to connect with Health Service fails (error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_3

    .line 2651
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 2654
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 2655
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2584
    :goto_0
    if-eqz v0, :cond_3

    .line 2586
    const-string v0, "HealthDataStore"

    const-string v2, "Check SupportedDevice"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    new-instance v0, Lcom/samsung/android/sdk/healthdata/aa;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/sdk/healthdata/aa;-><init>(Lcom/samsung/android/sdk/healthdata/w;IB)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/healthdata/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2588
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 2655
    goto :goto_0

    .line 2590
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/healthdata/a;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/healthdata/a;-><init>(IZ)V

    .line 2591
    if-eq p1, v4, :cond_4

    if-eq p1, v5, :cond_4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 2594
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/healthdata/a;->setPackageManager(Landroid/content/pm/PackageManager;)V

    .line 2596
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->c:Lcom/samsung/android/sdk/healthdata/z;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/healthdata/z;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V

    goto :goto_1
.end method

.method private static a(Ljava/net/URL;)Z
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x4

    .line 875
    .line 881
    const-string v4, ""

    .line 887
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 888
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 889
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 890
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 891
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v5, v4

    move v4, v0

    move v0, v1

    .line 893
    :goto_0
    if-eq v4, v2, :cond_9

    .line 894
    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    .line 895
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 896
    const-string v8, "appId"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 897
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 898
    if-ne v7, v11, :cond_0

    .line 899
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 925
    :cond_0
    :goto_1
    const/4 v7, 0x3

    if-ne v4, v7, :cond_b

    .line 926
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 927
    const-string v7, "appInfo"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 930
    const-string v0, "2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    move v0, v2

    :goto_2
    move v4, v0

    .line 933
    :goto_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v12, v0

    move v0, v4

    move v4, v12

    goto :goto_0

    .line 901
    :cond_2
    const-string v8, "resultCode"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 902
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 903
    if-ne v7, v11, :cond_0

    .line 904
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 906
    :cond_3
    const-string v8, "resultMsg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 907
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 908
    if-ne v7, v11, :cond_0

    .line 909
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 938
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_4

    .line 940
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 945
    :cond_4
    :goto_5
    return v1

    .line 911
    :cond_5
    :try_start_3
    const-string v8, "version"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 912
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 913
    if-ne v7, v11, :cond_0

    .line 914
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 938
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v3, :cond_6

    .line 940
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 942
    :cond_6
    :goto_7
    throw v0

    .line 916
    :cond_7
    :try_start_5
    const-string v8, "versionCode"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 917
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 918
    if-ne v7, v11, :cond_0

    .line 919
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 920
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 921
    const-string v8, "%010d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 930
    goto :goto_2

    .line 938
    :cond_9
    if-eqz v3, :cond_a

    .line 940
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_a
    :goto_8
    move v1, v0

    .line 945
    goto :goto_5

    .line 942
    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_7

    .line 938
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_4

    :cond_b
    move v4, v0

    goto/16 :goto_3
.end method

.method private static a([Landroid/content/pm/Signature;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    new-instance v4, Landroid/content/pm/Signature;

    const-string v0, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v4, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308201e53082014ea00302010202044f54468b300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3132303330353034353232375a170d3432303232363034353232375a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d00308189028181008a53be36d02befe1d152724281630bd1c42eff0edf5fdca8eb944f536ab3f54dca9b22cfb421b37706a4ad259101815723202b359250cf6c59905032798273462bfa3f9f1881f7475ee5b25849edefac81085815f42383a44cb2be1bfd5c1f049ef42f5818f35fe0b1131c769cee347d558395a5fa87c3d425b2b9c819cf91870203010001300d06092a864886f70d0101050500038181000512992268a01e0941481931f3f9b6647fbe25ee0bc9648f35d56c55f8cfa6c935fb3d435125fd60ef566769ac7e64fe2823409461ca7a04570c43baaab3fb877bf3a6a8dd9ef7e69944f65b0e5e36f2ac2bf085fdeda063898855ea2ce84c60655d824844fe1659a77c12604c3fb84d41df6f1a7705a1b9962ac2fdc9933122"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 197
    new-instance v5, Landroid/content/pm/Signature;

    const-string v1, "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

    invoke-direct {v5, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v6, Landroid/content/pm/Signature;

    const-string v1, "308204a830820390a003020102020900b3998086d056cffa300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353232343035305a170d3335303930313232343035305a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009c780592ac0d5d381cdeaa65ecc8a6006e36480c6d7207b12011be50863aabe2b55d009adf7146d6f2202280c7cd4d7bdb26243b8a806c26b34b137523a49268224904dc01493e7c0acf1a05c874f69b037b60309d9074d24280e16bad2a8734361951eaf72a482d09b204b1875e12ac98c1aa773d6800b9eafde56d58bed8e8da16f9a360099c37a834a6dfedb7b6b44a049e07a269fccf2c5496f2cf36d64df90a3b8d8f34a3baab4cf53371ab27719b3ba58754ad0c53fc14e1db45d51e234fbbe93c9ba4edf9ce54261350ec535607bf69a2ff4aa07db5f7ea200d09a6c1b49e21402f89ed1190893aab5a9180f152e82f85a45753cf5fc19071c5eec827020103a381fc3081f9301d0603551d0e041604144fe4a0b3dd9cba29f71d7287c4e7c38f2086c2993081c90603551d230481c13081be80144fe4a0b3dd9cba29f71d7287c4e7c38f2086c299a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900b3998086d056cffa300c0603551d13040530030101ff300d06092a864886f70d01010405000382010100572551b8d93a1f73de0f6d469f86dad6701400293c88a0cd7cd778b73dafcc197fab76e6212e56c1c761cfc42fd733de52c50ae08814cefc0a3b5a1a4346054d829f1d82b42b2048bf88b5d14929ef85f60edd12d72d55657e22e3e85d04c831d613d19938bb8982247fa321256ba12d1d6a8f92ea1db1c373317ba0c037f0d1aff645aef224979fba6e7a14bc025c71b98138cef3ddfc059617cf24845cf7b40d6382f7275ed738495ab6e5931b9421765c491b72fb68e080dbdb58c2029d347c8b328ce43ef6a8b15533edfbe989bd6a48dd4b202eda94c6ab8dd5b8399203daae2ed446232e4fe9bd961394c6300e5138e3cfd285e6e4e483538cb8b1b357"

    invoke-direct {v6, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v7, Landroid/content/pm/Signature;

    const-string v1, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    invoke-direct {v7, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/content/pm/Signature;

    aput-object v4, v1, v3

    aput-object v7, v1, v2

    aput-object v0, v1, v8

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v0, 0x4

    aput-object v6, v1, v0

    .line 206
    new-array v0, v8, [Landroid/content/pm/Signature;

    aput-object v4, v0, v3

    aput-object v7, v0, v2

    .line 210
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "userdebug"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    :cond_0
    const-string v0, "HealthDataStore"

    const-string v4, " SIGNATURES_ENG "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 217
    :cond_1
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v6, p0, v4

    .line 218
    array-length v7, v0

    move v1, v3

    :goto_1
    if-ge v1, v7, :cond_3

    aget-object v8, v0, v1

    .line 219
    invoke-virtual {v8, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 220
    const-string v0, "HealthDataStore"

    const-string v1, " signature matched "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 237
    :goto_2
    return v0

    .line 218
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 227
    :cond_4
    array-length v0, p0

    if-lez v0, :cond_5

    .line 228
    array-length v1, p0

    move v0, v3

    :goto_3
    if-ge v0, v1, :cond_6

    aget-object v2, p0, v0

    .line 229
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 230
    const-string v5, "HealthDataStore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " signature : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v4, -0x5

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 234
    :cond_5
    const-string v0, "HealthDataStore"

    const-string v1, " no signatures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v3

    .line 237
    goto :goto_2
.end method

.method private b()I
    .locals 4

    .prologue
    .line 484
    const/4 v0, -0x1

    .line 486
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_0

    .line 489
    :try_start_0
    const-string v2, "com.sec.android.app.shealth"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 490
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/ab;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/healthdata/w;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    return-object v0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 684
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v2

    .line 723
    :goto_0
    return v0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 692
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 693
    const-string v1, "OMAP_SS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 694
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->d()Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_2
    const-string v1, "SAMSUNG-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 698
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_3
    const-string v1, "http://hub.samsungapps.com/product/appCheck.as?"

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "appInfo=com.sec.android.app.shealth@0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1760
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 1764
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1765
    if-eqz v0, :cond_5

    .line 1769
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1770
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1771
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&csc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1777
    const-string v0, ""

    .line 1779
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1783
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->f()Ljava/lang/String;

    move-result-object v3

    .line 1784
    if-eqz v3, :cond_4

    .line 1788
    const-string v4, "FAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1791
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 705
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&openApi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1837
    new-instance v1, Ljava/io/File;

    const-string v3, "mnt/sdcard/pd.test"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 708
    if-eqz v1, :cond_6

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pd=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "&mcc=000"

    .line 713
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    const-string v1, "HealthDataStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server URL : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    invoke-static {v1}, Lcom/samsung/android/sdk/healthdata/w;->a(Ljava/net/URL;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_0

    .line 1773
    :cond_5
    const-string v0, ""

    goto/16 :goto_1

    .line 712
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1842
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 1843
    const-string v0, ""

    goto :goto_2

    .line 1846
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1847
    if-nez v0, :cond_8

    .line 1848
    const-string v0, ""

    goto :goto_2

    .line 1852
    :cond_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 1853
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1862
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1863
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    .line 1864
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1855
    :pswitch_0
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1856
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1859
    :cond_9
    const-string v0, ""

    goto/16 :goto_2

    .line 1866
    :cond_a
    const-string v0, ""

    goto/16 :goto_2

    .line 721
    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_0

    .line 1853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/samsung/android/sdk/healthdata/w;)I
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/w;->b()I

    move-result v0

    return v0
.end method

.method private static d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 727
    const-string v0, ""

    .line 728
    const-string v1, "/system/version"

    .line 730
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 735
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 742
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 743
    if-lez v2, :cond_0

    .line 744
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 750
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 756
    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 750
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 754
    :catch_1
    move-exception v1

    goto :goto_0

    .line 749
    :catchall_0
    move-exception v0

    .line 750
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 753
    :goto_1
    throw v0

    .line 754
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    .line 738
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/at;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->d:Lcom/samsung/android/sdk/healthdata/at;

    return-object v0
.end method

.method private static e()Z
    .locals 3

    .prologue
    .line 798
    const/4 v0, 0x0

    .line 799
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/csc/sales_code.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 801
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 805
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/samsung/android/sdk/healthdata/w;)J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/samsung/android/sdk/healthdata/w;->k:J

    return-wide v0
.end method

.method private static f()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 810
    new-instance v2, Ljava/io/File;

    const-string v1, "/system/csc/sales_code.dat"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    const/16 v1, 0x14

    new-array v3, v1, [B

    .line 815
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 817
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v2

    .line 826
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 833
    :cond_0
    :goto_1
    return-object v0

    .line 819
    :cond_1
    :try_start_3
    const-string v0, "FAIL"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 824
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_0

    .line 826
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 829
    :catch_1
    move-exception v1

    goto :goto_1

    .line 824
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_2

    .line 826
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 829
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 824
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method static synthetic g(Lcom/samsung/android/sdk/healthdata/w;)Z
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/w;->c()Z

    move-result v0

    return v0
.end method

.method public static getInterface(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/at;
    .locals 2

    .prologue
    .line 427
    if-nez p0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HealthDataStore is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->d:Lcom/samsung/android/sdk/healthdata/at;

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Health data service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->d:Lcom/samsung/android/sdk/healthdata/at;

    return-object v0
.end method

.method public static getMyUserId()J
    .locals 2

    .prologue
    .line 280
    sget-wide v0, Lcom/samsung/android/sdk/healthdata/w;->h:J

    return-wide v0
.end method

.method public static getPlatformPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/samsung/android/sdk/healthdata/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getSocketKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/samsung/android/sdk/healthdata/w;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final connectService()V
    .locals 2

    .prologue
    .line 400
    sget-wide v0, Lcom/samsung/android/sdk/healthdata/w;->j:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/w;->connectService(J)V

    .line 401
    return-void
.end method

.method public final connectService(J)V
    .locals 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const-wide/16 v4, 0x2

    .line 310
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is not specified(null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/healthdata/v;->a:Z

    if-nez v0, :cond_1

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HealthDataService is not initialized correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    const-string v0, "com.samsung.android.sdkapp.health"

    sget-object v1, Lcom/samsung/android/sdk/healthdata/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/healthdata/w;->b:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 331
    sget-object v2, Lcom/samsung/android/sdk/healthdata/w;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a([Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    const/16 v1, 0x8

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 377
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    invoke-virtual {v0, v6, v4, v5}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Context is not valid. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :catch_2
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const-string v1, "HealthDataStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    invoke-virtual {v0, v7, v4, v5}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 347
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sdk.healthdata.IHealthDataStore"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/samsung/android/sdk/healthdata/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/w;->l:Landroid/content/ServiceConnection;

    const/16 v3, 0x41

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    .line 356
    if-eqz v0, :cond_3

    .line 357
    iput-wide p1, p0, Lcom/samsung/android/sdk/healthdata/w;->k:J

    goto :goto_0

    .line 353
    :catch_3
    move-exception v0

    .line 354
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Context is not valid. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/healthdata/w;->b:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 363
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x3d0900

    if-ge v1, v2, :cond_4

    .line 364
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    const/4 v1, 0x4

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    .line 374
    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    invoke-virtual {v0, v6, v4, v5}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 367
    :cond_4
    :try_start_4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5

    .line 368
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 375
    :catch_5
    move-exception v0

    .line 376
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Context is not valid. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->f:Lcom/samsung/android/sdk/healthdata/ab;

    const/4 v1, 0x6

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0
.end method

.method public final disconnectService()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/w;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/w;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    :goto_1
    const-string v0, "HealthDataStore"

    const-string v1, "disconnectService: Context instance is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
