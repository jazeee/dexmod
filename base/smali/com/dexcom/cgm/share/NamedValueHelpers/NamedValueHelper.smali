.class public Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;
.super Ljava/lang/Object;
.source "NamedValueHelper.java"


# instance fields
.field private m_cgmp:Lcom/dexcom/cgm/b/f;

.field private m_dal:Lcom/dexcom/cgm/d/a;

.field private m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebservice;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/b/f;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    .line 27
    iput-object p2, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 28
    iput-object p3, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_cgmp:Lcom/dexcom/cgm/b/f;

    .line 29
    return-void
.end method

.method private internalUpload(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->name()Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-virtual {p1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->getValueFromDatabase(Lcom/dexcom/cgm/d/a;)Ljava/lang/String;

    move-result-object v2

    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v3, v1, v2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdateNamedValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueUpdateFailedWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    :goto_0
    const/4 v0, 0x1

    .line 55
    :goto_1
    return v0

    .line 43
    :catch_0
    move-exception v3

    :try_start_1
    iget-object v3, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v3, v1, v2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->CreateNamedValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    goto :goto_1

    .line 55
    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public loadAllNamedValues()V
    .locals 8

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ListValueNames()Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/d/e;->setNewUser(Z)V

    .line 104
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->values()[Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 107
    invoke-virtual {v4}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    sget-object v5, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->ShareEnabled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne v4, v5, :cond_1

    .line 111
    iget-object v5, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    iget-object v6, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_cgmp:Lcom/dexcom/cgm/b/f;

    const-string v7, "true"

    invoke-virtual {v4, v5, v6, v7}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->storeValueIntoDatabase(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/b/f;Ljava/lang/String;)V

    .line 112
    sget-object v4, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->ShareEnabled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 104
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v5, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-virtual {v4}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadNamedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    iget-object v6, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    iget-object v7, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_cgmp:Lcom/dexcom/cgm/b/f;

    invoke-virtual {v4, v6, v7, v5}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->storeValueIntoDatabase(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/b/f;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 125
    const-class v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load name/value pair!"

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :cond_3
    return-void
.end method

.method public uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->internalUpload(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)Z

    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setNamedValueNeedsUpload(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public uploadNamedValuesIfNeeded()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getNamedValueNeedsUpload()Z

    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->values()[Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 76
    invoke-direct {p0, v4}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->internalUpload(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)Z

    move-result v4

    .line 77
    if-nez v4, :cond_1

    .line 79
    const-class v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "We failed to upload our Named Values; we\'ll have to try again later."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setNamedValueNeedsUpload(Z)V

    goto :goto_0

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setNamedValueNeedsUpload(Z)V

    goto :goto_0
.end method
