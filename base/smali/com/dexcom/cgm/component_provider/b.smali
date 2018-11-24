.class public final Lcom/dexcom/cgm/component_provider/b;
.super Ljava/lang/Object;
.source "CgmComponentProvider.java"


# static fields
.field private static final FOREGROUND_NOTIFICATION_ID:I = 0x1770


# instance fields
.field private m_appCompatConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

.field private m_bulkDataConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

.field private m_database:Lcom/dexcom/cgm/e/f;

.field private m_isAlertSystemNeeded:Z

.field private m_isAppCompatibilityEnabled:Z

.field private m_isDataPublishEnabled:Z

.field private m_notification:Landroid/app/Notification;

.field private m_shareConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

.field private m_shareWSInterceptor:Lcom/dexcom/cgm/component_provider/n;

.field private m_swNumber:Ljava/lang/String;

.field private m_swVersion:Ljava/lang/String;

.field private m_txInterceptor:Lcom/dexcom/cgm/component_provider/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_shareConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    .line 174
    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_bulkDataConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    .line 175
    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_appCompatConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    .line 176
    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_txInterceptor:Lcom/dexcom/cgm/component_provider/o;

    .line 177
    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_shareWSInterceptor:Lcom/dexcom/cgm/component_provider/n;

    .line 178
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_swNumber:Ljava/lang/String;

    .line 179
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_swVersion:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Lcom/dexcom/cgm/component_provider/b;->m_isDataPublishEnabled:Z

    .line 181
    iput-boolean v1, p0, Lcom/dexcom/cgm/component_provider/b;->m_isAppCompatibilityEnabled:Z

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_isAlertSystemNeeded:Z

    return-void
.end method

.method private getUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .prologue
    .line 335
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a valid URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final build(Landroid/content/Context;)Lcom/dexcom/cgm/component_provider/a;
    .locals 16

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/component_provider/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-static {v1}, Lcom/dexcom/cgm/d/b;->create(Lcom/dexcom/cgm/e/f;)Lcom/dexcom/cgm/d/a;

    move-result-object v6

    .line 256
    invoke-static {v6}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->initialize(Lcom/dexcom/cgm/d/a;)V

    .line 258
    new-instance v1, Lcom/dexcom/cgm/g/a;

    invoke-direct {v1, v6}, Lcom/dexcom/cgm/g/a;-><init>(Lcom/dexcom/cgm/d/a;)V

    const/16 v2, 0x1770

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/component_provider/b;->m_notification:Landroid/app/Notification;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/bi;->create(Landroid/content/Context;Lcom/dexcom/cgm/g/a;ILandroid/app/Notification;)Lcom/dexcom/cgm/tx/mediator/bh;

    move-result-object v7

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/component_provider/b;->m_txInterceptor:Lcom/dexcom/cgm/component_provider/o;

    if-eqz v1, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dexcom/cgm/component_provider/b;->m_txInterceptor:Lcom/dexcom/cgm/component_provider/o;

    invoke-interface {v1, v7}, Lcom/dexcom/cgm/component_provider/o;->setTarget(Lcom/dexcom/cgm/tx/mediator/bh;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/component_provider/b;->m_txInterceptor:Lcom/dexcom/cgm/component_provider/o;

    .line 269
    :cond_0
    new-instance v1, Lcom/dexcom/cgm/component_provider/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/component_provider/d;-><init>(B)V

    .line 270
    invoke-static {v1}, Lcom/dexcom/c/c;->create(Lcom/dexcom/cgm/k/c;)Lcom/dexcom/c/c;

    move-result-object v11

    .line 273
    invoke-static {v6, v7, v1}, Lcom/dexcom/cgm/b/j;->create(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/tx/mediator/bh;Lcom/dexcom/cgm/k/c;)Lcom/dexcom/cgm/b/f;

    move-result-object v3

    .line 274
    const/4 v4, 0x0

    .line 275
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dexcom/cgm/component_provider/b;->m_isAlertSystemNeeded:Z

    if-eqz v2, :cond_1

    .line 277
    invoke-static {v3, v6, v11}, Lcom/dexcom/cgm/a/h;->create(Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/j/c;)Lcom/dexcom/cgm/a/f;

    move-result-object v4

    .line 280
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/component_provider/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-static {v2}, Lcom/dexcom/cgm/d/d;->create(Lcom/dexcom/cgm/e/f;)Lcom/dexcom/cgm/d/c;

    move-result-object v2

    .line 281
    const/4 v8, 0x0

    .line 282
    const/4 v9, 0x0

    .line 283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/component_provider/b;->m_shareConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    if-eqz v5, :cond_2

    .line 285
    new-instance v8, Lcom/dexcom/cgm/share/ShareServiceComponent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/component_provider/b;->m_shareConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    invoke-direct {v8, v6, v3, v5}, Lcom/dexcom/cgm/share/ShareServiceComponent;-><init>(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/model/ServerConfiguration;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/component_provider/b;->m_shareWSInterceptor:Lcom/dexcom/cgm/component_provider/n;

    if-eqz v5, :cond_2

    .line 292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/component_provider/b;->m_shareWSInterceptor:Lcom/dexcom/cgm/component_provider/n;

    invoke-virtual {v8}, Lcom/dexcom/cgm/share/ShareServiceComponent;->getWebservice()Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/dexcom/cgm/component_provider/n;->setTarget(Lcom/dexcom/cgm/share/webservice/ShareWebservice;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/component_provider/b;->m_shareWSInterceptor:Lcom/dexcom/cgm/component_provider/n;

    invoke-virtual {v8, v5}, Lcom/dexcom/cgm/share/ShareServiceComponent;->setShareWebservice(Lcom/dexcom/cgm/share/webservice/ShareWebservice;)V

    .line 296
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/component_provider/b;->m_bulkDataConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    if-eqz v5, :cond_3

    .line 298
    new-instance v9, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/component_provider/b;->m_bulkDataConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dexcom/cgm/component_provider/b;->m_swVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dexcom/cgm/component_provider/b;->m_swNumber:Ljava/lang/String;

    invoke-direct {v9, v2, v5, v10, v12}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;-><init>(Lcom/dexcom/cgm/d/c;Lcom/dexcom/cgm/model/ServerConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/component_provider/b;->m_appCompatConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    if-nez v2, :cond_4

    const/4 v10, 0x0

    .line 308
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/dexcom/c/a;->create(Lcom/dexcom/cgm/k/c;Landroid/content/Context;)Lcom/dexcom/c/a;

    move-result-object v12

    .line 310
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/dexcom/cgm/component_provider/CgmService;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 312
    new-instance v5, Lcom/dexcom/cgm/component_provider/c;

    invoke-direct {v5, v1}, Lcom/dexcom/cgm/component_provider/c;-><init>(Lcom/dexcom/cgm/component_provider/d;)V

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 314
    new-instance v1, Lcom/dexcom/cgm/component_provider/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/component_provider/b;->m_database:Lcom/dexcom/cgm/e/f;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/dexcom/cgm/component_provider/b;->m_isDataPublishEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/dexcom/cgm/component_provider/b;->m_isAppCompatibilityEnabled:Z

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lcom/dexcom/cgm/component_provider/a;-><init>(Landroid/content/Context;Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/a/f;Lcom/dexcom/cgm/e/f;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/tx/mediator/bh;Lcom/dexcom/cgm/share/ShareService;Lcom/dexcom/cgm/bulkdata/BulkDataService;Lcom/dexcom/a/a/a;Lcom/dexcom/cgm/j/c;Lcom/dexcom/c/a;ZZLcom/dexcom/cgm/component_provider/a;)V

    return-object v1

    .line 305
    :cond_4
    new-instance v10, Lcom/dexcom/a/a/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/component_provider/b;->m_appCompatConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    invoke-direct {v10, v2}, Lcom/dexcom/a/a/a;-><init>(Lcom/dexcom/cgm/model/ServerConfiguration;)V

    goto :goto_0
.end method

.method public final setAppCompat(Ljava/lang/String;Ljava/lang/String;)Lcom/dexcom/cgm/component_provider/b;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/dexcom/cgm/model/ServerConfiguration;

    invoke-direct {p0, p1}, Lcom/dexcom/cgm/component_provider/b;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/ServerConfiguration;-><init>(Ljava/net/URL;Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_appCompatConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    .line 201
    return-object p0
.end method

.method public final setAppCompatibilityEnabled(Z)Lcom/dexcom/cgm/component_provider/b;
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/dexcom/cgm/component_provider/b;->m_isAppCompatibilityEnabled:Z

    .line 232
    return-object p0
.end method

.method public final setBulkData(Ljava/lang/String;Ljava/lang/String;)Lcom/dexcom/cgm/component_provider/b;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/dexcom/cgm/model/ServerConfiguration;

    invoke-direct {p0, p1}, Lcom/dexcom/cgm/component_provider/b;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/ServerConfiguration;-><init>(Ljava/net/URL;Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_bulkDataConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    .line 195
    return-object p0
.end method

.method public final setDataPublishEnabled(Z)Lcom/dexcom/cgm/component_provider/b;
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/dexcom/cgm/component_provider/b;->m_isDataPublishEnabled:Z

    .line 226
    return-object p0
.end method

.method public final setDatabase(Lcom/dexcom/cgm/e/f;)Lcom/dexcom/cgm/component_provider/b;
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/b;->m_database:Lcom/dexcom/cgm/e/f;

    .line 238
    return-object p0
.end method

.method public final setForegroundNotification(Landroid/app/Notification;)Lcom/dexcom/cgm/component_provider/b;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/b;->m_notification:Landroid/app/Notification;

    .line 244
    return-object p0
.end method

.method public final setIsAlertSystemNeeded(Z)Lcom/dexcom/cgm/component_provider/b;
    .locals 0

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/dexcom/cgm/component_provider/b;->m_isAlertSystemNeeded:Z

    .line 250
    return-object p0
.end method

.method public final setShareServer(Ljava/lang/String;Ljava/lang/String;)Lcom/dexcom/cgm/component_provider/b;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Lcom/dexcom/cgm/model/ServerConfiguration;

    invoke-direct {p0, p1}, Lcom/dexcom/cgm/component_provider/b;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/ServerConfiguration;-><init>(Ljava/net/URL;Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/b;->m_shareConfig:Lcom/dexcom/cgm/model/ServerConfiguration;

    .line 189
    return-object p0
.end method

.method public final setShareWebserviceInterceptor(Lcom/dexcom/cgm/component_provider/n;)Lcom/dexcom/cgm/component_provider/b;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/b;->m_shareWSInterceptor:Lcom/dexcom/cgm/component_provider/n;

    .line 213
    return-object p0
.end method

.method public final setSoftwareInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/dexcom/cgm/component_provider/b;
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/b;->m_swVersion:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/dexcom/cgm/component_provider/b;->m_swNumber:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public final setTransmitterMediatorInterceptor(Lcom/dexcom/cgm/component_provider/o;)Lcom/dexcom/cgm/component_provider/b;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/b;->m_txInterceptor:Lcom/dexcom/cgm/component_provider/o;

    .line 207
    return-object p0
.end method
