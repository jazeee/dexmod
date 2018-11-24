.class public Lcom/flurry/sdk/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hj",
        "<",
        "Lcom/flurry/sdk/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/flurry/sdk/bv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/flurry/sdk/br;
    .locals 2

    .prologue
    .line 265
    sget-object v1, Lcom/flurry/sdk/br;->a:Lcom/flurry/sdk/br;

    .line 267
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-class v0, Lcom/flurry/sdk/br;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/br;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/f;Lorg/json/JSONArray;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 205
    if-eqz p2, :cond_7

    .line 206
    const/4 v0, 0x0

    move v4, v2

    .line 208
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 209
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_1

    .line 213
    const-string v3, "string"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    :cond_0
    new-instance v3, Lcom/flurry/sdk/l;

    invoke-direct {v3}, Lcom/flurry/sdk/l;-><init>()V

    .line 220
    const-string v5, "string"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    .line 221
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 225
    :cond_2
    const-string v3, "com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    if-nez v0, :cond_3

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :cond_3
    const-string v3, "com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_1

    .line 234
    new-instance v5, Lcom/flurry/sdk/m;

    invoke-direct {v5}, Lcom/flurry/sdk/m;-><init>()V

    .line 235
    const-string v3, "event_name"

    const-string v6, ""

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    .line 236
    const-string v3, "event_parameter_name"

    const-string v6, ""

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/flurry/sdk/m;->c:Ljava/lang/String;

    .line 238
    const-string v3, "event_parameter_values"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 240
    if-eqz v6, :cond_5

    .line 241
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v2

    .line 243
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 245
    const-string v7, ""

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v1, v3

    .line 252
    :goto_3
    iput-object v1, v5, Lcom/flurry/sdk/m;->d:[Ljava/lang/String;

    .line 254
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    goto :goto_3

    .line 259
    :cond_6
    iput-object v0, p1, Lcom/flurry/sdk/f;->c:Ljava/util/List;

    .line 261
    :cond_7
    return-void
.end method

.method private a(Lcom/flurry/sdk/g;Lorg/json/JSONArray;)V
    .locals 9

    .prologue
    const/16 v8, 0x14

    .line 159
    if-eqz p2, :cond_4

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 163
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_2

    .line 166
    new-instance v3, Lcom/flurry/sdk/f;

    invoke-direct {v3}, Lcom/flurry/sdk/f;-><init>()V

    .line 167
    const-string v4, "partner"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/f;->b:Ljava/lang/String;

    .line 169
    const-string v4, "events"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 170
    invoke-direct {p0, v3, v4}, Lcom/flurry/sdk/bv;->a(Lcom/flurry/sdk/f;Lorg/json/JSONArray;)V

    .line 172
    const-string v4, "method"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/flurry/sdk/bv;->a(Ljava/lang/String;)Lcom/flurry/sdk/br;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/f;->d:Lcom/flurry/sdk/br;

    .line 173
    const-string v4, "uri_template"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/f;->e:Ljava/lang/String;

    .line 175
    const-string v4, "body_template"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 176
    if-eqz v4, :cond_0

    .line 177
    const-string v5, "string"

    const-string v6, "null"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    iput-object v4, v3, Lcom/flurry/sdk/f;->f:Ljava/lang/String;

    .line 183
    :cond_0
    const-string v4, "max_redirects"

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/f;->g:I

    .line 184
    const-string v4, "connect_timeout"

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/f;->h:I

    .line 185
    const-string v4, "request_timeout"

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/f;->i:I

    .line 186
    const-string v4, "callback_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/f;->a:J

    .line 188
    const-string v4, "headers"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_1

    .line 190
    const-string v4, "map"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_1

    .line 192
    invoke-static {v2}, Lcom/dexcom/a/a/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/flurry/sdk/f;->j:Ljava/util/Map;

    .line 196
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 199
    :cond_3
    iput-object v1, p1, Lcom/flurry/sdk/g;->a:Ljava/util/List;

    .line 201
    :cond_4
    return-void
.end method

.method private a(Lcom/flurry/sdk/i;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 122
    const-string v0, "global_settings"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/flurry/sdk/p;

    invoke-direct {v1}, Lcom/flurry/sdk/p;-><init>()V

    iput-object v1, p1, Lcom/flurry/sdk/i;->d:Lcom/flurry/sdk/p;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p1, Lcom/flurry/sdk/i;->d:Lcom/flurry/sdk/p;

    const-string v2, "log_level"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/bv;->b(Ljava/lang/String;)Lcom/flurry/sdk/q;

    move-result-object v0

    iput-object v0, v1, Lcom/flurry/sdk/p;->a:Lcom/flurry/sdk/q;

    .line 128
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/flurry/sdk/q;
    .locals 2

    .prologue
    .line 277
    sget-object v1, Lcom/flurry/sdk/q;->f:Lcom/flurry/sdk/q;

    .line 279
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-class v0, Lcom/flurry/sdk/q;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/flurry/sdk/i;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 131
    const-string v0, "pulse"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/flurry/sdk/g;

    invoke-direct {v1}, Lcom/flurry/sdk/g;-><init>()V

    .line 135
    if-eqz v0, :cond_0

    .line 136
    const-string v2, "callbacks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 137
    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/bv;->a(Lcom/flurry/sdk/g;Lorg/json/JSONArray;)V

    .line 139
    const-string v2, "max_callback_retries"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/flurry/sdk/g;->b:I

    .line 140
    const-string v2, "max_callback_attempts_per_report"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/flurry/sdk/g;->c:I

    .line 141
    const-string v2, "max_report_delay_seconds"

    const/16 v3, 0x258

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/flurry/sdk/g;->d:I

    .line 142
    const-string v2, "agent_report_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/flurry/sdk/g;->e:Ljava/lang/String;

    .line 145
    :cond_0
    iput-object v1, p1, Lcom/flurry/sdk/i;->e:Lcom/flurry/sdk/g;

    .line 146
    return-void
.end method

.method private c(Lcom/flurry/sdk/i;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 149
    const-string v0, "analytics"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/flurry/sdk/s;

    invoke-direct {v1}, Lcom/flurry/sdk/s;-><init>()V

    iput-object v1, p1, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/s;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p1, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/s;

    const-string v2, "analytics_enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/flurry/sdk/s;->b:Z

    .line 154
    iget-object v1, p1, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/s;

    const-string v2, "max_session_properties"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/flurry/sdk/s;->a:I

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/i;
    .locals 6

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {p1}, Lcom/flurry/sdk/ik;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 103
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/sdk/bv;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proton response string: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/flurry/sdk/i;

    invoke-direct {v0}, Lcom/flurry/sdk/i;-><init>()V

    .line 107
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "issued_at"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/flurry/sdk/i;->a:J

    .line 109
    const-string v1, "refresh_ttl"

    const-wide/16 v4, 0xe10

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/flurry/sdk/i;->b:J

    .line 110
    const-string v1, "expiration_ttl"

    const-wide/32 v4, 0x15180

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/flurry/sdk/i;->c:J

    .line 112
    invoke-direct {p0, v0, v2}, Lcom/flurry/sdk/bv;->a(Lcom/flurry/sdk/i;Lorg/json/JSONObject;)V

    .line 113
    invoke-direct {p0, v0, v2}, Lcom/flurry/sdk/bv;->b(Lcom/flurry/sdk/i;Lorg/json/JSONObject;)V

    .line 114
    invoke-direct {p0, v0, v2}, Lcom/flurry/sdk/bv;->c(Lcom/flurry/sdk/i;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception while deserialize: "

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/i;)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Serialize not supported for response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Lcom/flurry/sdk/i;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/bv;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/i;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bv;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/i;

    move-result-object v0

    return-object v0
.end method
