<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="WebApplication1.dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Music & Video Streaming Dashboard</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: radial-gradient(circle at top left, #0f2027, #203a43, #2c5364);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            color: #fff;
            overflow: auto;
        }

        .dashboard-container {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-radius: 16px;
            padding: 20px;
            width: 100%;
            max-width: 1200px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.4);
            text-align: center;
            overflow: hidden;
        }
        .card{
            top : revert;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
            font-weight: 600;
            font-size: 32px;
            color: #00fff7;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .content {
            padding: 20px;
        }

        .player-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
            margin-bottom: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .player-container h3 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 10px;
            color: #00fff7;
        }

        .player-container iframe {
            width: 100%;
            height: 315px;
            border-radius: 8px;
            outline: none;
            background-color: rgba(255, 255, 255, 0.1);
        }

        /* Flexbox layout for side-by-side display */
        .media-container {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            flex-wrap: wrap;
            flex-basis: auto;
        }

        .media-container .player-container {
            flex: 1;
            min-width: 280px;
        }

        .content .card {
            background-color: #1a1a1a;
            padding: 20px;
            margin: 20px 0;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .content .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.6);
        }

        .content .card h3 {
            margin: 0;
            font-size: 24px;
            color: #00fff7;
        }

        .content .card p {
            font-size: 16px;
            margin-top: 10px;
            color: #ccc;
        }

        .content .card a {
            color: #00fff7;
            text-decoration: none;
            font-weight: bold;
        }

        .content .card a:hover {
            text-decoration: underline;
        }

        @media screen and (max-width: 768px) {
            .dashboard-container {
                width: 95%;
                padding: 20px;
            }

            .header {
                font-size: 24px;
            }

            .media-container {
                flex-direction: column;
                gap: 10px;
            }

            .player-container {
                min-width: 100%;
            }

            .content .card h3 {
                font-size: 20px;
            }
        }

        /* Small screen adjustments */
        @media screen and (max-width: 480px) {
            .header {
                font-size: 20px;
            }

            .content .card h3 {
                font-size: 18px;
            }

            .player-container iframe {
                height: 250px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dashboard-container">
            <div class="header">
                SoundFusion
            </div>

            <div class="content">
                <!-- Flex container for side-by-side media players -->
                <div class="media-container">
                    <!-- YouTube Player Section -->
                    <div class="player-container">
                        <h3>Now Playing: YouTube Video - "PALESA - DJ Tira"</h3>
                        <iframe src="https://www.youtube.com/embed/BcfLQLV-6rY?si=Eoa9aCOck8PGv8Sa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    </div>
                    <div class="player-container">
                            <h3>Now Playing: "Mzokwana – Izinyanya"</h3>
                           <iframe width="100%" height="315" src="https://www.youtube.com/embed/J3De4qjGho4?si=UTZ949AhMXtWz1Ys" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                   </div>


                    <!-- Song Player Section for Mr Thela -->
                    <div class="player-container">
                        <h3>Now Playing: Mr Thela - Crossnight</h3>
                        <iframe scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1706245404&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>
                        <div style="font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;">
                            <a href="https://soundcloud.com/mrthela" title="Mr Thela" target="_blank" style="color: #cccccc; text-decoration: none;">Mr Thela</a> · <a href="https://soundcloud.com/mrthela/crossnight" title="Crossnight" target="_blank" style="color: #cccccc; text-decoration: none;">Crossnight</a>
                        </div>
                    </div>
                    <div class="player-container">
                          <h3>Now Playing: Vuka Playlist – MR.ROLITAS</h3>
                         <iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay"
                           src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/1996383588&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true">
                           </iframe>
                          <div style="font-size: 10px; color: #cccccc </div>
                        <div class="player-container">
    <h3>Now Playing: Mr Thela – Tronics Land Series 2</h3>
    <iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay"
        src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/1821405813&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true">
    </iframe>
    <div style="font-size: 10px; color: #cccccc; line-break: anywhere; word-break: normal; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; font-family: Interstate, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Garuda, Verdana, Tahoma, sans-serif; font-weight: 100;">
        <a href="https://soundcloud.com/mrthela" title="Mr Thela" target="_blank" style="color: #cccccc; text-decoration: none;">Mr Thela</a> · 
        <a href="https://soundcloud.com/mrthela/sets/tronics-land-series-2-1" title="Tronics Land Series 2" target="_blank" style="color: #cccccc; text-decoration: none;">Tronics Land Series 2</a>
    </div>
</div>
                        <div class="player-container">
    <h3>Now Playing: YouTube Video – "Top Hit Video"</h3>
    <iframe width="100%" height="315"
        src="https://www.youtube.com/embed/h-XQQ5m0SMk?si=4Rbknd6u6uQkmH-f"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin"
        allowfullscreen>
    </iframe>
</div>



                <!-- Cards Section for Recommended Music -->
                <h1>Song MP3</h1>
                <div class="card">
                    <h3>Recommended Music</h3>
                    <p>Check out these trending tracks. <a href="#">Listen Now</a></p>
                </div>

                <!-- Cards Section for Recommended Videos -->
                <h1>Video</h1>
                <div class="card">
                    <h3>Recommended Videos</h3>
                    <p>Discover the most popular videos now. <a href="#">Watch Now</a></p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
