.class public Landroid/media/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFocusControl$DisplayInfoForServer;,
        Landroid/media/MediaFocusControl$AudioFocusDeathHandler;,
        Landroid/media/MediaFocusControl$MediaEventHandler;,
        Landroid/media/MediaFocusControl$NotificationListenerObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field protected static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_RCC_GET_NOW_PLAYING_ENTRIES:I = 0xe

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x7

.field private static final MSG_RCC_SET_BROWSED_PLAYER:I = 0xc

.field private static final MSG_RCC_SET_PLAY_ITEM:I = 0xd

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x8

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0x9

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xa

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final MSG_UNREGISTER_MEDIABUTTONINTENT:I = 0xb

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Landroid/media/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

.field private mNotifyFocusOwnerOnDuck:Z

.field private final mPRStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/PlayerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Landroid/media/AudioService$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 420
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 422
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Landroid/media/AudioService$VolumeController;
    .param p4, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v6, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    .line 424
    new-instance v2, Landroid/media/MediaFocusControl$1;

    invoke-direct {v2, p0}, Landroid/media/MediaFocusControl$1;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 482
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 649
    iput-boolean v4, p0, Landroid/media/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 657
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 984
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    .line 1127
    new-instance v2, Landroid/media/MediaFocusControl$2;

    invoke-direct {v2, p0}, Landroid/media/MediaFocusControl$2;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1145
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    .line 1151
    iput-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1156
    iput-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1170
    iput v6, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1196
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    .line 1202
    iput-object v3, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1803
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    .line 89
    new-instance v2, Landroid/media/MediaFocusControl$MediaEventHandler;

    invoke-direct {v2, p0, p1}, Landroid/media/MediaFocusControl$MediaEventHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    .line 90
    iput-object p2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 91
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    iput-object p3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/AudioService$VolumeController;

    .line 93
    iput-object p4, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    .line 95
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 96
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "handleMediaEvent"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    new-instance v2, Landroid/media/PlayerRecord$RemotePlaybackState;

    const/4 v3, -0x1

    invoke-static {v5}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v4

    invoke-static {v5}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/media/PlayerRecord$RemotePlaybackState;-><init>(III)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    .line 102
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 104
    .local v1, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 106
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 107
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 109
    new-instance v2, Landroid/media/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v2, p0}, Landroid/media/MediaFocusControl$NotificationListenerObserver;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

    .line 111
    iput-boolean v6, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    .line 112
    iput-boolean v6, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 114
    invoke-static {p0}, Landroid/media/PlayerRecord;->setMediaFocusControl(Landroid/media/MediaFocusControl;)V

    .line 116
    invoke-virtual {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$MediaEventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaFocusControl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaFocusControl;Landroid/media/PlayerRecord;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/PlayerRecord;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRcDisplayUpdate(Landroid/media/PlayerRecord;I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaFocusControl;ILjava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Long;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onSetRemoteControlClientPlayItem(ILjava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onGetRemoteControlClientNowPlayingEntries()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onSetRemoteControlClientBrowsedPlayer()V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/MediaFocusControl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaFocusControl;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaFocusControl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$900(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onRcDisplayClear()V

    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->isLockedFocusOwner(Landroid/media/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .locals 9
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 166
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v5, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 169
    const/4 v5, 0x1

    .line 203
    :goto_0
    return v5

    .line 173
    :cond_0
    if-eqz p1, :cond_3

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 177
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 178
    .local v2, "currentUser":I
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_notification_listeners"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 183
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 185
    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 187
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    const/4 v5, 0x2

    .line 199
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 184
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 199
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v6    # "ident":J
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 199
    .restart local v6    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private checkUpdateRemoteControlDisplay_syncPrs(I)V
    .locals 1
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1585
    :goto_0
    return-void

    .line 1584
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->updateRemoteControlDisplay_syncPrs(I)V

    goto :goto_0
.end method

.method private clearRemoteControlDisplay_syncPrs()V
    .locals 3

    .prologue
    .line 1526
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1527
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1528
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1531
    return-void

    .line 1528
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 17
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 943
    if-eqz p2, :cond_0

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 946
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 947
    .local v5, "keyIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 949
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 952
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/16 v4, 0x7bc

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    :goto_1
    :try_start_2
    monitor-exit v16

    .line 975
    return-void

    .line 952
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 955
    :catch_0
    move-exception v13

    .line 956
    .local v13, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending pending intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {v13}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 974
    .end local v13    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 962
    :cond_2
    if-eqz p2, :cond_3

    .line 963
    :try_start_3
    const-string v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 965
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v14

    .line 967
    .local v14, "ident":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 971
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 919
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 920
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 921
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    if-eqz p2, :cond_0

    .line 923
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 924
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 928
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    return-void

    .line 931
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 489
    const-string v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 491
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 492
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 495
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Notify on duck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1224
    const-string v1, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1226
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1227
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/media/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 1233
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1230
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1231
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nCurrent remote control generation ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1232
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1233
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1234
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v2

    .line 1235
    :try_start_4
    const-string v1, "\nRemote Volume State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  has remote: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  is remote active: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  rccId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume handling: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v1, v1, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    if-nez v1, :cond_1

    const-string v1, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolume:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume steps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1245
    return-void

    .line 1232
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1239
    :cond_1
    :try_start_7
    const-string v1, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_1

    .line 1244
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1252
    const-string v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1254
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1255
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1257
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- wantsPosSync:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$2300(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1263
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1257
    .restart local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :try_start_1
    const-string v2, "disabled"

    goto :goto_1

    .line 1263
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1264
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1209
    const-string v1, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1211
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1212
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/media/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 1215
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1216
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    .line 1829
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1830
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1831
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    .line 1832
    .local v1, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1834
    :try_start_0
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1840
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prse":Landroid/media/PlayerRecord;
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 889
    invoke-static {p1}, Landroid/media/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_0
    return-void

    .line 894
    :cond_0
    sget-object v1, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 895
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 898
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 899
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 901
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 902
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 904
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 901
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 907
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1000
    const/4 v1, 0x1

    .line 1001
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1002
    .local v0, "keyAction":I
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1003
    if-nez v0, :cond_2

    .line 1004
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1006
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    .line 1007
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 1023
    :cond_0
    :goto_0
    monitor-exit v3

    .line 1026
    packed-switch v1, :pswitch_data_0

    .line 1040
    :goto_1
    :pswitch_0
    return-void

    .line 1008
    :cond_1
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1011
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 1012
    const/4 v1, 0x2

    goto :goto_0

    .line 1014
    :cond_2
    if-ne v0, v2, :cond_0

    .line 1015
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    .line 1017
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    .line 1018
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    const/4 v1, 0x3

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1033
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/media/MediaFocusControl;->startVoiceBasedInteractions(Z)V

    goto :goto_1

    .line 1037
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 294
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v2

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 300
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    const/4 v2, 0x1

    goto :goto_0

    .line 299
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1372
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerRecord;

    invoke-virtual {v0, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    const/4 v0, 0x1

    .line 1375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockedFocusOwner(Landroid/media/FocusRequester;)Z
    .locals 1
    .param p1, "fr"    # Landroid/media/FocusRequester;

    .prologue
    .line 587
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/FocusRequester;->isLockedFocusOwner()Z

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

.method protected static isPlaystateActive(I)Z
    .locals 1
    .param p0, "playState"    # I

    .prologue
    .line 2170
    packed-switch p0, :pswitch_data_0

    .line 2179
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2177
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2170
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1053
    if-nez p0, :cond_0

    .line 1054
    const/4 v0, 0x0

    .line 1056
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1066
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    .line 1067
    const/4 v0, 0x1

    .line 1069
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusGain(I)V

    .line 467
    :cond_0
    return-void
.end method

.method private onGetRemoteControlClientNowPlayingEntries()V
    .locals 5

    .prologue
    .line 2069
    const-string v1, "MediaFocusControl"

    const-string/jumbo v2, "onGetRemoteControlClientNowPlayingEntries: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2071
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2073
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1}, Landroid/media/IRemoteControlClient;->getNowPlayingEntries()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2079
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2080
    return-void

    .line 2074
    :catch_0
    move-exception v0

    .line 2075
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 2079
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 1447
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1448
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1449
    :try_start_1
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1451
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1453
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1454
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1455
    return-void

    .line 1453
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1454
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1496
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1497
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1498
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1503
    :try_start_2
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1508
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1517
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1518
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1519
    return-void

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1513
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1514
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "MediaFocusControl"

    const-string v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1517
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    .line 1518
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method private onRcDisplayUpdate(Landroid/media/PlayerRecord;I)V
    .locals 6
    .param p1, "prse"    # Landroid/media/PlayerRecord;
    .param p2, "flags"    # I

    .prologue
    .line 1461
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1462
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1463
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1466
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1469
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {p1}, Landroid/media/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1486
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1487
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1488
    return-void

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 1486
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 1487
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 0

    .prologue
    .line 2285
    return-void
.end method

.method private onReevaluateRemoteControlDisplays()V
    .locals 17

    .prologue
    .line 240
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 241
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 246
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 247
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    if-nez v13, :cond_1

    .line 252
    const/4 v12, 0x0

    .line 256
    .local v12, "enabledComponents":[Ljava/lang/String;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 257
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 260
    .local v9, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$400(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    .line 262
    .local v14, "wasEnabled":Z
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$400(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Landroid/media/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9, v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$502(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 264
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eq v14, v1, :cond_0

    .line 267
    :try_start_2
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    .line 269
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    .line 272
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0x9

    const/4 v3, 0x2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 278
    :catch_0
    move-exception v11

    .line 279
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "MediaFocusControl"

    const-string v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 284
    .end local v9    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .end local v14    # "wasEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 285
    :catchall_1
    move-exception v1

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 254
    :cond_1
    :try_start_5
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "enabledComponents":[Ljava/lang/String;
    goto :goto_0

    .line 284
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_2
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 286
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 6
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 2106
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2111
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2112
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 2113
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2114
    iput-object p2, v2, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v4

    .line 2123
    return-void

    .line 2111
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2118
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2122
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onSetRemoteControlClientBrowsedPlayer()V
    .locals 5

    .prologue
    .line 2089
    const-string v2, "MediaFocusControl"

    const-string/jumbo v3, "onSetRemoteControlClientBrowsedPlayer: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    .line 2091
    .local v1, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2092
    const-string v2, "MediaFocusControl"

    const-string v3, "can not proceed with setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :goto_0
    return-void

    .line 2094
    :cond_0
    const-string v2, "MediaFocusControl"

    const-string/jumbo v3, "proceed with setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :try_start_0
    const-string v2, "MediaFocusControl"

    const-string v3, "Calling setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlClient;->setBrowsedPlayer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onSetRemoteControlClientPlayItem(ILjava/lang/Long;)V
    .locals 6
    .param p1, "scope"    # I
    .param p2, "uid"    # Ljava/lang/Long;

    .prologue
    .line 2050
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetRemoteControlClientPlayItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2052
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2054
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, p1, v4, v5}, Landroid/media/IRemoteControlClient;->setPlayItem(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2060
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2061
    return-void

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 2060
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    .locals 6
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1810
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1811
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1812
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1814
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_start_0
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 1816
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$2300(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1817
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1819
    :catch_0
    move-exception v2

    .line 1820
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1823
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 235
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1, "focusGain"    # I

    .prologue
    .line 476
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 477
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_0

    .line 480
    :cond_0
    return-void
.end method

.method private pushBelowLockedFocusOwners(Landroid/media/FocusRequester;)I
    .locals 5
    .param p1, "nfr"    # Landroid/media/FocusRequester;

    .prologue
    .line 600
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .line 601
    .local v1, "lastLockedFocusOwnerIndex":I
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 602
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FocusRequester;

    invoke-direct {p0, v2}, Landroid/media/MediaFocusControl;->isLockedFocusOwner(Landroid/media/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    move v1, v0

    .line 601
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 606
    :cond_1
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 608
    const-string v2, "MediaFocusControl"

    const-string v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    invoke-virtual {p1}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 612
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const/4 v2, 0x1

    .line 616
    :goto_1
    return v2

    .line 615
    :cond_2
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 616
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 12
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1279
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1280
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    new-instance v9, Landroid/media/PlayerRecord;

    invoke-direct {v9, p1, p2, p3}, Landroid/media/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const/4 v7, 0x1

    .line 1341
    :goto_0
    return v7

    .line 1282
    :cond_0
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/PlayerRecord;

    invoke-virtual {v8, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1284
    const/4 v7, 0x0

    goto :goto_0

    .line 1286
    :cond_1
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v9, 0x1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 1288
    const/4 v7, 0x0

    goto :goto_0

    .line 1290
    :cond_2
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/PlayerRecord;

    .line 1291
    .local v4, "oldTopPrse":Landroid/media/PlayerRecord;
    const/4 v7, 0x0

    .line 1292
    .local v7, "topChanged":Z
    const/4 v5, 0x0

    .line 1293
    .local v5, "prse":Landroid/media/PlayerRecord;
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1294
    .local v3, "lastPlayingIndex":I
    const/4 v1, -0x1

    .line 1298
    .local v1, "inStackIndex":I
    :try_start_0
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "index":I
    move-object v6, v5

    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .local v6, "prse":Landroid/media/PlayerRecord;
    :goto_1
    if-ltz v2, :cond_5

    .line 1299
    :try_start_1
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/PlayerRecord;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1300
    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    :try_start_2
    invoke-virtual {v5}, Landroid/media/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1301
    move v3, v2

    .line 1303
    :cond_3
    invoke-virtual {v5, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 1304
    move v1, v2

    .line 1298
    :cond_4
    add-int/lit8 v2, v2, -0x1

    move-object v6, v5

    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .restart local v6    # "prse":Landroid/media/PlayerRecord;
    goto :goto_1

    .line 1308
    :cond_5
    const/4 v8, -0x1

    if-ne v1, v8, :cond_6

    .line 1310
    :try_start_3
    new-instance v5, Landroid/media/PlayerRecord;

    invoke-direct {v5, p1, p2, p3}, Landroid/media/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1313
    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    :try_start_4
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1334
    .end local v2    # "index":I
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    const-string v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong index (inStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastPlaying="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " accessing media button stack"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1316
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .restart local v2    # "index":I
    .restart local v6    # "prse":Landroid/media/PlayerRecord;
    :cond_6
    :try_start_5
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_9

    .line 1317
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/PlayerRecord;
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1319
    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    :try_start_6
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->removeElementAt(I)V

    .line 1320
    invoke-virtual {v5}, Landroid/media/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1322
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1325
    :cond_7
    if-le v1, v3, :cond_8

    .line 1326
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1328
    :cond_8
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1334
    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .restart local v6    # "prse":Landroid/media/PlayerRecord;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    goto :goto_2

    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .restart local v6    # "prse":Landroid/media/PlayerRecord;
    :cond_9
    move-object v5, v6

    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    goto/16 :goto_0
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1848
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1849
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1850
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1851
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1852
    const/4 v2, 0x1

    .line 1855
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .locals 17
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 1874
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1875
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    if-eqz p1, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1877
    :cond_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1911
    :goto_0
    return-void

    .line 1879
    :cond_1
    :try_start_3
    new-instance v11, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;-><init>(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    .line 1880
    .local v11, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v11, v4}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$502(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 1881
    move-object/from16 v0, p4

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v11, v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$402(Landroid/media/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 1882
    invoke-virtual {v11}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->init()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1884
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v15

    goto :goto_0

    .line 1910
    .end local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1887
    .restart local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1891
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1892
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1893
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/PlayerRecord;

    .line 1894
    .local v13, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v13}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1896
    :try_start_6
    invoke-virtual {v13}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1897
    :catch_0
    move-exception v12

    .line 1898
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "MediaFocusControl"

    const-string v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1909
    .end local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "prse":Landroid/media/PlayerRecord;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_1
    move-exception v4

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1906
    .restart local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1909
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1910
    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    .prologue
    .line 510
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    invoke-virtual {v3, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 513
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    .line 514
    .local v1, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v1}, Landroid/media/FocusRequester;->release()V

    .line 515
    if-eqz p3, :cond_0

    .line 516
    invoke-virtual {v1}, Landroid/media/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 517
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 518
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/media/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 520
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    if-eqz p2, :cond_1

    .line 522
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 540
    .end local v1    # "fr":Landroid/media/FocusRequester;
    :cond_1
    return-void

    .line 529
    :cond_2
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 530
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    .line 532
    .restart local v1    # "fr":Landroid/media/FocusRequester;
    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 533
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 536
    invoke-virtual {v1}, Landroid/media/FocusRequester;->release()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 549
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    invoke-virtual {v3, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 553
    .local v1, "isTopOfStackForClientToRemove":Z
    :goto_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 554
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 555
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 556
    .local v0, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 549
    .end local v0    # "fr":Landroid/media/FocusRequester;
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 562
    .restart local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 565
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 567
    :cond_3
    return-void
.end method

.method private removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1352
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1353
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 1354
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1355
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->destroy()V

    .line 1357
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_0
    :goto_1
    return-void

    .line 1352
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1361
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 340
    if-nez p2, :cond_1

    .line 341
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    :goto_0
    return-void

    .line 342
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 1044
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1045
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1047
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1048
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1050
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 7
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 2185
    if-nez p2, :cond_1

    .line 2215
    :cond_0
    :goto_0
    return-void

    .line 2189
    :cond_1
    const/4 v3, 0x0

    .line 2190
    .local v3, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2195
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2196
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 2198
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 2199
    iget-object v3, v2, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2207
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2208
    if-eqz v3, :cond_0

    .line 2210
    const/4 v4, -0x1

    :try_start_2
    invoke-interface {v3, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2211
    :catch_0
    move-exception v0

    .line 2212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaFocusControl"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2195
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2203
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_1
    move-exception v0

    .line 2205
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing media button stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2207
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 5
    .param p1, "newClientGeneration"    # I

    .prologue
    .line 1410
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1411
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1412
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    .line 1413
    .local v1, "se":Landroid/media/PlayerRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1415
    :try_start_0
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v0

    .line 1417
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1419
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 1423
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Landroid/media/PlayerRecord;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 6
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1386
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 1387
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1388
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1389
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_start_1
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v2

    .line 1395
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MediaFocusControl"

    const-string v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1396
    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1397
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1401
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1402
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1436
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1438
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 1439
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 10
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1077
    const/4 v5, 0x0

    .line 1082
    .local v5, "voiceIntent":Landroid/content/Intent;
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1083
    .local v4, "pm":Landroid/os/PowerManager;
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v6

    .line 1084
    .local v1, "isLocked":Z
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1085
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1086
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "MediaFocusControl"

    const-string/jumbo v7, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_1
    if-eqz p1, :cond_0

    .line 1095
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1097
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1099
    .local v2, "identity":J
    if-eqz v5, :cond_1

    .line 1100
    const/high16 v6, 0x10800000

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1102
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    if-eqz p1, :cond_2

    .line 1109
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1112
    :cond_2
    :goto_2
    return-void

    .end local v1    # "isLocked":Z
    .end local v2    # "identity":J
    :cond_3
    move v1, v7

    .line 1083
    goto :goto_0

    .line 1088
    .restart local v1    # "isLocked":Z
    :cond_4
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.extras.EXTRA_SECURE"

    if-eqz v1, :cond_5

    iget-object v9, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_3
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1091
    const-string v6, "MediaFocusControl"

    const-string/jumbo v7, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v6, v7

    .line 1089
    goto :goto_3

    .line 1104
    .restart local v2    # "identity":J
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v6, "MediaFocusControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity for search: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    if-eqz p1, :cond_2

    .line 1109
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1107
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    if-eqz p1, :cond_6

    .line 1109
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    throw v6
.end method

.method private updateRemoteControlDisplay_syncPrs(I)V
    .locals 6
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1542
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    .line 1543
    .local v1, "prse":Landroid/media/PlayerRecord;
    move v0, p1

    .line 1546
    .local v0, "infoFlagsAboutToBeUsed":I
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1548
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1562
    :goto_0
    return-void

    .line 1551
    :cond_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1552
    :try_start_0
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1554
    const/16 v0, 0xf

    .line 1556
    :cond_1
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1557
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1558
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1558
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v4, 0x1

    .line 830
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :try_start_0
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    const/4 v1, 0x1

    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1, v3}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 835
    monitor-exit v2

    .line 844
    :goto_0
    return v4

    .line 835
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 836
    :catch_0
    move-exception v0

    .line 840
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 677
    :goto_0
    return-void

    .line 663
    :cond_0
    sget-object v4, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "found":Z
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 666
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    const/4 v0, 0x1

    .line 671
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    if-eqz v0, :cond_3

    .line 672
    monitor-exit v4

    goto :goto_0

    .line 676
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 674
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .locals 9
    .param p1, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2132
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2135
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2136
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 2137
    .local v2, "prse":Landroid/media/PlayerRecord;
    iget v6, v2, Landroid/media/PlayerRecord;->mPlaybackType:I

    if-ne v6, v3, :cond_1

    iget-object v6, v2, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    iget v6, v6, Landroid/media/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v6}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v2, Landroid/media/PlayerRecord;->mPlaybackStream:I

    if-ne v6, p1, :cond_1

    .line 2142
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2143
    :try_start_1
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v8

    iput v8, v7, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2144
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Landroid/media/PlayerRecord;->mPlaybackVolume:I

    iput v8, v7, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolume:I

    .line 2145
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Landroid/media/PlayerRecord;->mPlaybackVolumeMax:I

    iput v8, v7, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    .line 2146
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Landroid/media/PlayerRecord;->mPlaybackVolumeHandling:I

    iput v8, v7, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    .line 2147
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2148
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2149
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2160
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :goto_1
    return v3

    .line 2148
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2152
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_0
    move-exception v0

    .line 2154
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v3, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2156
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2157
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v5

    .line 2158
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2159
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v3, v4

    .line 2160
    goto :goto_1

    .line 2135
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2156
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 2159
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .locals 3

    .prologue
    .line 447
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 451
    .local v0, "exFocusOwner":Landroid/media/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusLoss(I)V

    .line 452
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    .line 454
    .end local v0    # "exFocusOwner":Landroid/media/FocusRequester;
    :cond_0
    monitor-exit v2

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 876
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 884
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 885
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 121
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 122
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 123
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    .line 124
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    .prologue
    .line 724
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const/4 v0, 0x0

    monitor-exit v1

    .line 728
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2064
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2066
    return-void
.end method

.method protected getRemoteStreamMaxVolume()I
    .locals 3

    .prologue
    .line 2218
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2219
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2220
    const/4 v0, 0x0

    monitor-exit v1

    .line 2222
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 2223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .locals 3

    .prologue
    .line 2227
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2228
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2229
    const/4 v0, 0x0

    monitor-exit v1

    .line 2231
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_0

    .line 2232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isAppInFocus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, "isInFocus":Z
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 858
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v0

    .line 861
    :cond_0
    monitor-exit v2

    .line 862
    return v0

    .line 861
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Landroid/media/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .prologue
    .line 697
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 700
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call newAudioFocusLoser() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 706
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .prologue
    .line 712
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 715
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call newAudioFocusLoser() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 721
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1122
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    .line 1123
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1125
    :cond_0
    return-void
.end method

.method protected postReevaluateRemote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2278
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2279
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 1632
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :goto_0
    return-void

    .line 1637
    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1638
    :try_start_0
    iput-object p1, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1639
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1593
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1596
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1600
    :cond_0
    monitor-exit v1

    .line 1601
    return-void

    .line 1600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 1666
    const/4 v3, -0x1

    .line 1667
    .local v3, "rccId":I
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1670
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1671
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 1672
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, p2, p3, v4}, Landroid/media/PlayerRecord;->resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    if-nez p2, :cond_2

    .line 1697
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_0
    :goto_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1698
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1700
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1701
    return v3

    .line 1680
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v3

    .line 1684
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1685
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1690
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1692
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1700
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1670
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 222
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 224
    const/4 v1, 0x1

    .line 229
    :goto_0
    return v1

    .line 226
    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register IRemoteControlDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 208
    invoke-direct {p0, p4}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 209
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 211
    const/4 v1, 0x1

    .line 216
    :goto_0
    return v1

    .line 213
    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or be an enabled NotificationListenerService for registerRemoteController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1967
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1968
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1969
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    .line 1970
    .local v0, "artworkSizeUpdate":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 1971
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1972
    .local v1, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1973
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_0

    .line 1974
    :cond_1
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    .line 1975
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1, p3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$802(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    .line 1976
    const/4 v0, 0x1

    goto :goto_0

    .line 1980
    .end local v1    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_2
    if-eqz v0, :cond_4

    .line 1983
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1984
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1985
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/PlayerRecord;

    .line 1986
    .local v4, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v4}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1988
    :try_start_1
    invoke-virtual {v4}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1989
    :catch_0
    move-exception v3

    .line 1990
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1995
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Landroid/media/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1996
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2012
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2013
    const/4 v4, 0x0

    .line 2016
    .local v4, "rcdRegistered":Z
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2017
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2018
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2019
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2020
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$2302(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2021
    const/4 v4, 0x1

    .line 2025
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    if-nez v4, :cond_2

    .line 2026
    monitor-exit v7

    .line 2042
    :goto_0
    return-void

    .line 2030
    :cond_2
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2031
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2032
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/PlayerRecord;

    .line 2033
    .local v3, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v3}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2035
    :try_start_1
    invoke-virtual {v3}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2036
    :catch_0
    move-exception v2

    .line 2037
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2041
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "prse":Landroid/media/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 680
    if-nez p1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 683
    :cond_0
    sget-object v3, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 684
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 685
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 736
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 740
    const-string v3, "MediaFocusControl"

    const-string v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/16 v16, 0x0

    .line 822
    :goto_0
    return v16

    .line 744
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 746
    const/16 v16, 0x0

    goto :goto_0

    .line 749
    :cond_1
    sget-object v17, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v17

    .line 750
    const/4 v14, 0x0

    .line 751
    .local v14, "focusGrantDelayed":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 752
    and-int/lit8 v3, p7, 0x1

    if-nez v3, :cond_2

    .line 753
    const/16 v16, 0x0

    monitor-exit v17

    goto :goto_0

    .line 820
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 758
    :cond_2
    const/4 v14, 0x1

    .line 765
    :cond_3
    :try_start_1
    new-instance v9, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    .local v9, "afdh":Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/FocusRequester;

    .line 778
    .local v15, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v15}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_4

    invoke-virtual {v15}, Landroid/media/FocusRequester;->getGrantFlags()I

    move-result v3

    move/from16 v0, p7

    if-ne v3, v0, :cond_4

    .line 781
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 782
    invoke-virtual {v15}, Landroid/media/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 784
    const/16 v16, 0x1

    monitor-exit v17

    goto/16 :goto_0

    .line 768
    .end local v15    # "fr":Landroid/media/FocusRequester;
    :catch_0
    move-exception v13

    .line 770
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/16 v16, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .line 788
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v15    # "fr":Landroid/media/FocusRequester;
    :cond_4
    if-nez v14, :cond_5

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 791
    invoke-virtual {v15}, Landroid/media/FocusRequester;->release()V

    .line 796
    .end local v15    # "fr":Landroid/media/FocusRequester;
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 798
    new-instance v2, Landroid/media/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p0

    invoke-direct/range {v2 .. v12}, Landroid/media/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILandroid/media/MediaFocusControl;)V

    .line 800
    .local v2, "nfr":Landroid/media/FocusRequester;
    if-eqz v14, :cond_7

    .line 803
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/media/MediaFocusControl;->pushBelowLockedFocusOwners(Landroid/media/FocusRequester;)I

    move-result v16

    .line 804
    .local v16, "requestResult":I
    if-eqz v16, :cond_6

    .line 805
    invoke-virtual {v2}, Landroid/media/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 807
    :cond_6
    monitor-exit v17

    goto/16 :goto_0

    .line 810
    .end local v16    # "requestResult":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 811
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 815
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-virtual {v2}, Landroid/media/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 820
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 822
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 652
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/media/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 653
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2083
    const-string v0, "MediaFocusControl"

    const-string/jumbo v1, "setRemoteControlClientBrowsedPlayer: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2086
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    const/4 v2, 0x0

    .line 2045
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xd

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    move v3, v2

    move v4, p3

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2047
    return-void
.end method

.method protected setRemoteStreamVolume(I)V
    .locals 8
    .param p1, "vol"    # I

    .prologue
    .line 2237
    const/4 v3, -0x1

    .line 2238
    .local v3, "rccId":I
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v6

    .line 2239
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v5, v5, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 2240
    monitor-exit v6

    .line 2270
    :cond_0
    :goto_0
    return-void

    .line 2242
    :cond_1
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v3, v5, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2243
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    const/4 v4, 0x0

    .line 2245
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v6

    .line 2250
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2251
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 2253
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 2254
    iget-object v4, v2, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2262
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2263
    if-eqz v4, :cond_0

    .line 2265
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v4, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2266
    :catch_0
    move-exception v0

    .line 2267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MediaFocusControl"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2243
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2250
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2258
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_1
    move-exception v0

    .line 2260
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2262
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 849
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 850
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 851
    monitor-exit v1

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    .prologue
    .line 1646
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :goto_0
    return-void

    .line 1651
    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1652
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1653
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1609
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1612
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 1613
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V

    .line 1614
    if-eqz v0, :cond_0

    .line 1616
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1618
    :cond_0
    monitor-exit v2

    .line 1619
    return-void

    .line 1618
    .end local v0    # "topOfStackWillChange":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 1622
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1625
    return-void
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1711
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1712
    const/4 v3, 0x0

    .line 1714
    .local v3, "topRccChange":Z
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1715
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 1716
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1719
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->resetControllerInfoForNoRcc()V

    .line 1720
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    const/4 v3, 0x1

    .line 1729
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1731
    const/16 v4, 0xf

    :try_start_1
    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1733
    :cond_1
    monitor-exit v5

    .line 1734
    return-void

    .line 1720
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1714
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1725
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1733
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1921
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1922
    if-nez p1, :cond_0

    .line 1923
    :try_start_0
    monitor-exit v7

    .line 1955
    :goto_0
    return-void

    .line 1926
    :cond_0
    const/4 v2, 0x0

    .line 1927
    .local v2, "displayWasPluggedIn":Z
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1928
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    .line 1929
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1930
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1931
    const/4 v2, 0x1

    .line 1932
    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1933
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1954
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "displayWasPluggedIn":Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1937
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v2    # "displayWasPluggedIn":Z
    :cond_2
    if-eqz v2, :cond_4

    .line 1940
    :try_start_1
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1941
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1942
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/PlayerRecord;

    .line 1943
    .local v4, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v4}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1945
    :try_start_2
    invoke-virtual {v4}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1946
    :catch_0
    move-exception v3

    .line 1947
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "MediaFocusControl"

    const-string v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1954
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Landroid/media/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
