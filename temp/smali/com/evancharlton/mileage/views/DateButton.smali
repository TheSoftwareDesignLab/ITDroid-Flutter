.class public Lcom/evancharlton/mileage/views/DateButton;
.super Landroid/widget/Button;
.source "DateButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;
    }
.end annotation


# static fields
.field private static mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDateFormatter:Ljava/text/DateFormat;

.field private final mDateSetCallback:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mTimestamp:J

    .line 25
    new-instance v0, Lcom/evancharlton/mileage/views/DateButton$1;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/views/DateButton$1;-><init>(Lcom/evancharlton/mileage/views/DateButton;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mDateSetCallback:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 39
    new-instance v0, Lcom/evancharlton/mileage/views/DateButton$2;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/views/DateButton$2;-><init>(Lcom/evancharlton/mileage/views/DateButton;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mDateFormatter:Ljava/text/DateFormat;

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mCalendar:Ljava/util/Calendar;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/evancharlton/mileage/views/DateButton;->setDate(J)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;)Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    .prologue
    .line 19
    sput-object p0, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/views/DateButton;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/views/DateButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/evancharlton/mileage/views/DateButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/views/DateButton;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/evancharlton/mileage/views/DateButton;->showDialog()V

    return-void
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/DateButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/evancharlton/mileage/views/DateButton;->mDateSetCallback:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Lcom/evancharlton/mileage/views/DateButton;->mCalendar:Ljava/util/Calendar;

    invoke-direct {v0, v1, v2, v3}, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V

    sput-object v0, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    .line 54
    sget-object v0, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;->show()V

    .line 55
    return-void
.end method


# virtual methods
.method public getDate()Ljava/sql/Date;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/sql/Date;

    iget-wide v1, p0, Lcom/evancharlton/mileage/views/DateButton;->mTimestamp:J

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mTimestamp:J

    return-wide v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 70
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 71
    .local v0, "icicle":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 72
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/evancharlton/mileage/views/DateButton;->setDate(J)V

    .line 73
    sget-object v1, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    iget-object v2, p0, Lcom/evancharlton/mileage/views/DateButton;->mDateSetCallback:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;->setCallback(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 76
    :try_start_0
    sget-object v1, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    sget-object v1, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "icicle":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/DateButton;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    sget-object v1, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/evancharlton/mileage/views/DateButton;->mDialog:Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;->dismiss()V

    .line 65
    :cond_0
    return-object v0
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 92
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/views/DateButton;->setDate(Ljava/sql/Date;)V

    .line 93
    return-void
.end method

.method public setDate(Ljava/sql/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/sql/Date;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 87
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mTimestamp:J

    .line 88
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton;->mDateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/views/DateButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
