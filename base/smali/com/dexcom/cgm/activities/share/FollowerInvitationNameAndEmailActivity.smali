.class public Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;
.super Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;
.source "FollowerInvitationNameAndEmailActivity.java"


# static fields
.field private static final PICK_CONTACT:I = 0x1


# instance fields
.field private m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->doServerValidation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    return-object v0
.end method

.method private doServerValidation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    .line 118
    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/ShareService;->doesFollowerExistByName(Ljava/lang/String;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 122
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_30:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->setName(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->setEmailAddress(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_general_no_internet:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->showErrorMessage(I)V

    goto :goto_0

    .line 157
    :catch_1
    move-exception v0

    :goto_1
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->showErrorMessage(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private getStringFromTextField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isValidEmail(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 109
    invoke-static {p1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->isInvalidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStringOfTextField(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method private showErrorMessage(I)V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$3;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public static stripChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-char v4, v2, v0

    .line 243
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 244
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->clearInstance()V

    .line 56
    invoke-super {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->finish()V

    .line 57
    return-void
.end method

.method protected getCircleArrayIndex()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected getContentViewID()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_follower_invitation_name_and_email:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 221
    if-nez v3, :cond_2

    .line 237
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 224
    :cond_2
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 237
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 229
    :cond_3
    :try_start_1
    const-string v0, "display_name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v1, "data1"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    sget v4, Lcom/dexcom/cgm/activities/R$id;->follower_name_field:I

    invoke-direct {p0, v4, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->setStringOfTextField(ILjava/lang/String;)V

    .line 235
    sget v0, Lcom/dexcom/cgm/activities/R$id;->follower_email_field:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->setStringOfTextField(ILjava/lang/String;)V

    .line 236
    sget v0, Lcom/dexcom/cgm/activities/R$id;->follower_confirm_email_field:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->setStringOfTextField(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public onClickInviteFromContacts(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    return-void
.end method

.method public onClickNext(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 62
    sget v0, Lcom/dexcom/cgm/activities/R$id;->follower_name_field:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getStringFromTextField(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_27:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->showErrorMessage(I)V

    .line 105
    :goto_0
    return-void

    .line 69
    :cond_0
    sget v1, Lcom/dexcom/cgm/activities/R$id;->follower_email_field:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getStringFromTextField(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->isValidEmail(Ljava/lang/String;)Z

    move-result v2

    .line 71
    sget v3, Lcom/dexcom/cgm/activities/R$id;->follower_confirm_email_field:I

    invoke-direct {p0, v3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->getStringFromTextField(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-direct {p0, v3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->isValidEmail(Ljava/lang/String;)Z

    move-result v4

    .line 73
    if-nez v2, :cond_1

    if-eqz v4, :cond_2

    .line 75
    :cond_1
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_28:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->showErrorMessage(I)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 81
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_29:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->showErrorMessage(I)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 87
    new-instance v2, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$1;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/dexcom/cgm/activities/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    .line 37
    return-void
.end method
