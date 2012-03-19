\chapterwithauthor{Kai Blin}{Writing Patches}

\authorbio{Kai Blin is a computational biologist searching for antibiotics in his
    day job, both at the computer and in the lab. He feels very happy that he
    gets to release the software developed at work under Open Source licenses.
    Living in the lovely southern German town of T\"ubingen, Kai spends some of
    his evenings at the computer, programming for the Samba project. Most of
    his remaining spare time is spent at the theatre, where Kai is active both
    on stage as well as building props, stage and handling other techie
    things backstage.}

\noindent{}Writing patches and submitting them often is the first real interaction you can
have with an Open Source project. They are the first impression you give to the
developers there. Getting your first patches ``right'', however that is judged
by the particular project you are contributing to, will make your life much
easier.

The exact rules on what the patch should look like, how you need to send it to
the project and all the other details will probably vary with every project you
want to contribute to. I have found that few general rules hold pretty much all
the time, and that is what this essay is about.

\section*{How to get things wrong}

This book is about ``things we wish we had known when we got started'',
so let me get started with the story of my first patches. I first got involved
in real coding during the Google Summer of Code\texttrademark ~2005. The Wine
project had accepted me to implement NTLM crypto based on some Samba-related
tool. Wine is a single-committer project, meaning that only the lead developer,
Alexandre Julliard, has commit access to the main repository. Back in 2005, Wine
still was using CVS as its version control. When the project started and I got
the email that I was accepted, I got hold of my mentor on IRC and got to work.

Coding away happily, I got the first features implemented. I produced a patch
for my mentor to review. In the olden CVS days, you had to provide all the diff
options manually, but I had read up on that part.
\mbox{\texttt{cvs diff -N -u > ntlm.patch}} and I had the file I could send to
my mentor. Actually this is one thing I did get right, and the first thing you
should consider when you prepare a patch. The normal output from the diff
command might be easier to read for a computer, but I never met a human who
actually preferred the normal output over the unified diff output. Switched on
by the \texttt{-u} flag, this makes diff use the \texttt{$+++$} and
\texttt{$---$} notation.

For example, the following diff is the result of teaching the Python ``Hello,
world!'' example program to greet the world in Swedish.

\begin{verbatim}
diff --git a/hello.py b/hello.py
index 59dbef8..6334aa2 100644
--- a/hello.py
+++ b/hello.py
@@ -1,4 +1,4 @@
 #!/usr/bin/env python
 # vim: set fileencoding=utf-8

-print "Hello, world!"
+print "Hallå, världen!"
\end{verbatim}

The line starting with \texttt{-} is the line being removed, the one starting
with \texttt{+} is the one being added. The other lines are helping the
\texttt{patch} tool to do its job.

My newly created unified diff was sent to my mentor, who gave me a review and
lots of things I could change. I fixed that stuff, and sent him a new diff
shortly after. The code--review cycle continued for the whole duration of GSoC,
with my patch growing and growing. When the pencils down date arrived, I had
a huge monster patch with all my changes in there. Naturally I had a really hard
time getting that patch reviewed, let alone committed. In the end, Alexandre
refused to look at the patch further before I split it up. Wine policy requires
that patches are small logical steps adding functionality. Each patch needs to
do something useful \emph{and} compile.

Now, splitting an existing huge patch up in pieces that individually make sense
\emph{and} compile is a lot of work. It was even more work because the only way
I knew this could be done was to write a small patch, create the diff, get that
committed, update my local checkout and then write the next small patch. Shortly
after I started sending my first small patches, Wine went into a one month
feature freeze leading up to the 0.9.0 beta release. I was sitting on my next
patch for a month before I could continue, and I eventually got my last patch in
in November. I was totally frustrated with the whole experience and decided I
did not want to deal with the Wine community anymore.

My frustration held up until people who were actually using my code were
starting to ask questions about it in February 2006. My code was actually
useful! They wanted more features as well. When Google went on to announce it
would be doing GSoC again in 2006, my plans for the summer were clear. Now that
Wine had switched to git in December 2005, I knew I would not be held up by
possible code freezes, as I finally could create all my small patches locally.
Life was good.

It wasn't until I stumbled over a git frontend (called porcelain in git-speak)
that emulated the ``quilt'' behavior that I learned that there were tools that
could have made my life easier even in 2005.

\section*{How NOT to get things wrong}

After my tale of how I managed to get things wrong with regard to sending
patches, let me continue with a few tips to avoid the pitfalls.

\subsection*{Patch submission guidelines}

The first tip I have is to read up on any patch submission guidelines the
project you want to contribute to might have. Those should actually be consulted
before you start coding, along with any coding style guidelines the project has.

\subsection*{Unified diffs}

Even if not covered in the patch submission guidelines explicitly, you really,
really want to send unified diff output. I have yet to meet a project that
prefers the non-unified output of diff. Unified diffs make reviewing the patch
so much easier. It is no accident that most modern version control programs
automatically use that format in their diff command.

\subsection*{Use distributed version control}

Speaking of modern version control, you will want to use a DVCS to work on the
code locally. Git or Mercurial are the most popular choices there, Bazaar might
be worth a look as well. Even if the project you want to contribute to still
uses a centralized version control, being able to commit your changes
iteratively is a great thing. All of the mentioned distributed version control
tools should be able to import commits from SVN or CVS. You could go and learn
quilt, but seriously, the future is in the field of distributed version
control.

\subsection*{Small patches, doing one thing at a time}

When I have to review patches, patches that are too big or that try to do many
things at once are really annoying to deal with. Patches doing only one thing at
a time are easier to review. Eventually, they will make your life easier when you
finally need to debug the mistakes both the author and the reviewer of the patch
missed.

\subsection*{Track your patch}

After you have submitted your patch, keep an eye on the communication channels
of the project and on your patch. If you have not gotten any feedback for a week,
you should politely ask for feedback. Depending how the project handles patch
submissions, a patch might get lost in the noise. Do not expect to get your patch
committed in the first iteration. It usually takes a couple of tries to get used
to the style of a new project. As a first-time contributor, nobody will blame
you for this, provided you get most of the things right. Just make sure that you
fix all of the things the developers indicated and send a second version of the
patch.

\section*{Conclusion}

Writing good patches is not hard. There are a couple of things to consider, but
after writing a couple of them you should be on top of those. A modern
(distributed) version control system and the workflow you get using it actually
take care of most of the things I mentioned.

\subsection*{If you remember nothing else, remember this\ldots}

\begin{itemize}
  \item Use a distributed version control system to manage your patches
  \item Write patches changing code in small, self-contained steps
  \item Follow the existing coding conventions
  \item Respond to comments on your patch promptly
\end{itemize}

The above guidelines should help you to do most if not all things right when
submitting your first patches. Happy coding.
