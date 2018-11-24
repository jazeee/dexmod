.class public Lcom/dexcom/cgm/test/api/SetupConfiguration;
.super Ljava/lang/Object;
.source "SetupConfiguration.java"


# static fields
.field public static final APP_COMPAT_URL:Ljava/lang/String; = "appCompatUrl"

.field public static final BULK_DATA_URL:Ljava/lang/String; = "bulkDataUrl"

.field public static final SHARE_URL:Ljava/lang/String; = "shareUrl"

.field public static final STARTUP_OPTION:Ljava/lang/String; = "startup_option"


# instance fields
.field private m_appCompatUrl:Ljava/lang/String;

.field private m_bulkDataUrl:Ljava/lang/String;

.field private m_shareUrl:Ljava/lang/String;

.field private m_startupOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/test/api/StartupOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_appCompatUrl:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_shareUrl:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_bulkDataUrl:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_startupOptions:Ljava/util/List;

    .line 31
    return-void
.end method

.method private static getStartupOptionString(Lcom/dexcom/cgm/test/api/SetupConfiguration;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getStartupOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/StartupOption;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 114
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/test/api/StartupOption;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStartupOptions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/test/api/StartupOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 82
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/dexcom/cgm/test/api/StartupOption;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/StartupOption;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 84
    goto :goto_0
.end method

.method public static read(Ljava/io/File;)Lcom/dexcom/cgm/test/api/SetupConfiguration;
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/dexcom/cgm/test/api/SetupConfiguration;

    invoke-direct {v0}, Lcom/dexcom/cgm/test/api/SetupConfiguration;-><init>()V

    .line 68
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 54
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const-string v0, "startup_option"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getStartupOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 63
    new-instance v0, Lcom/dexcom/cgm/test/api/SetupConfiguration;

    invoke-direct {v0}, Lcom/dexcom/cgm/test/api/SetupConfiguration;-><init>()V

    .line 64
    const-string v3, "appCompatUrl"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->setAppCompatUrl(Ljava/lang/String;)V

    .line 65
    const-string v3, "shareUrl"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->setShareUrl(Ljava/lang/String;)V

    .line 66
    const-string v3, "bulkDataUrl"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->setBulkDataUrl(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->setStartupOptions(Ljava/util/List;)V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load properties file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static write(Ljava/io/File;Lcom/dexcom/cgm/test/api/SetupConfiguration;)V
    .locals 4

    .prologue
    .line 89
    invoke-static {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getStartupOptionString(Lcom/dexcom/cgm/test/api/SetupConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 92
    const-string v2, "appCompatUrl"

    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getAppCompatUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string v2, "shareUrl"

    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getShareUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string v2, "bulkDataUrl"

    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getBulkDataUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string v2, "startup_option"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not store properties file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAppCompatUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_appCompatUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBulkDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_bulkDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartupOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/test/api/StartupOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_startupOptions:Ljava/util/List;

    return-object v0
.end method

.method public isAppCompatUrl()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_appCompatUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_appCompatUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBulkDataUrl()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_bulkDataUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_bulkDataUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShareUrl()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_shareUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_shareUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppCompatUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_appCompatUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setBulkDataUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_bulkDataUrl:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_shareUrl:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setStartupOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/test/api/StartupOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_startupOptions:Ljava/util/List;

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{appCompatUrl=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_appCompatUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_shareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bulkDataUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_bulkDataUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startupOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/test/api/SetupConfiguration;->m_startupOptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
