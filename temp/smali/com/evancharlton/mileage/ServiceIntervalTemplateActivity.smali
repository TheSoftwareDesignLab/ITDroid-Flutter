.class public Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "ServiceIntervalTemplateActivity.java"


# instance fields
.field protected mDescription:Landroid/widget/EditText;

.field protected mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

.field protected mDuration:Lcom/evancharlton/mileage/views/DateDelta;

.field protected final mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

.field protected mTitle:Landroid/widget/EditText;

.field protected mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 21
    new-instance v0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    return-void
.end method


# virtual methods
.method protected getCreateString()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f070022

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 51
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/templates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTitle:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDescription:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DistanceDelta;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    .line 61
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DateDelta;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    .line 62
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v0, 0x7f03001b

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 37
    return-void
.end method

.method protected populateUI()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDistance()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DistanceDelta;->setDelta(J)V

    .line 70
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DateDelta;->setDelta(J)V

    .line 71
    return-void
.end method

.method protected setFields()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 75
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 77
    new-instance v5, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v6, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTitle:Landroid/widget/EditText;

    const v7, 0x7f0700bb

    invoke-direct {v5, v6, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v5

    .line 79
    :cond_0
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v5, v4}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setTitle(Ljava/lang/String;)V

    .line 81
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    iget-object v6, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setDescription(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/views/DistanceDelta;->getDelta()J

    move-result-wide v0

    .line 84
    .local v0, "distance":J
    cmp-long v5, v0, v7

    if-gtz v5, :cond_1

    .line 85
    new-instance v5, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v6, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v6}, Lcom/evancharlton/mileage/views/DistanceDelta;->getEditField()Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f0700c0

    invoke-direct {v5, v6, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v5

    .line 88
    :cond_1
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v5, v0, v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setDistance(J)V

    .line 90
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/views/DateDelta;->getDelta()J

    move-result-wide v2

    .line 91
    .local v2, "duration":J
    cmp-long v5, v2, v7

    if-gtz v5, :cond_2

    .line 92
    new-instance v5, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v6, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    invoke-virtual {v6}, Lcom/evancharlton/mileage/views/DateDelta;->getEditField()Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f0700bf

    invoke-direct {v5, v6, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v5

    .line 95
    :cond_2
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    iget-object v6, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    invoke-virtual {v6}, Lcom/evancharlton/mileage/views/DateDelta;->getDelta()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setDuration(J)V

    .line 97
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    iget-object v6, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v6}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setVehicleTypeId(J)V

    .line 98
    return-void
.end method
