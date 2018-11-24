.class Lcom/dexcom/cgm/activities/controls/DexEditText$1;
.super Ljava/lang/Object;
.source "DexEditText.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexEditText;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexEditText;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexEditText$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v0, ";:\"`\\/<>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v0, v5

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v4, v2, v0

    .line 58
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 64
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 65
    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 70
    :goto_1
    return-object v4

    :cond_1
    move-object v4, v1

    goto :goto_1
.end method
