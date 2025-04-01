# Railway Redmine Deployment Template

This template allows you to easily deploy Bitnami's Redmine Docker image on Railway.app.

## What is Redmine?

Redmine is a flexible project management and issue tracking system. It includes support for:

- Multiple projects
- Flexible role-based access control
- Flexible issue tracking system
- Gantt chart and calendar
- News, documents & file management
- Per project wikis and forums
- Time tracking
- Custom fields for issues, time-entries, projects, and users
- SCM integration (SVN, Git, Mercurial, Bazaar, and Darcs)
- Issue creation via email
- Multiple LDAP authentication support
- User self-registration support
- Multilanguage support
- Multiple databases support

## Deployment on Railway

### Prerequisites

1. A Railway account
2. A PostgreSQL or MySQL database (can be provisioned through Railway)

### Required Environment Variables

Set these environment variables in your Railway project:

**Database Configuration:**
- `DATABASE_HOST` - Your database host
- `DATABASE_PORT` - Your database port
- `DATABASE_NAME` - Your database name
- `DATABASE_USERNAME` - Your database username
- `DATABASE_PASSWORD` - Your database password

**Admin Configuration:**
- `REDMINE_ADMIN_USERNAME` - Admin username (default: user)
- `REDMINE_ADMIN_PASSWORD` - Admin password (default: bitnami1)
- `REDMINE_ADMIN_EMAIL` - Admin email

**SMTP Configuration (Optional):**
- `SMTP_HOST` - SMTP server host
- `SMTP_PORT` - SMTP server port
- `SMTP_USERNAME` - SMTP username
- `SMTP_PASSWORD` - SMTP password

### Deployment Steps

1. Create a new project in Railway
2. Add a PostgreSQL or MySQL service to your project
3. Import this GitHub repository
4. Set up the environment variables as described above
5. Deploy the service

Railway will automatically build and deploy your Redmine instance.

## Accessing Redmine

Once deployed, access your Redmine instance at the provided Railway URL.

## Additional Configuration

For more configuration options, refer to the [Bitnami Redmine Docker Hub page](https://hub.docker.com/r/bitnami/redmine).

## Persistent Storage

Railway offers ephemeral storage by default. To persist data, consider:

1. Using the database for critical data
2. Setting up an external storage solution like S3 for file attachments

## Security Considerations

1. Change the default admin password immediately
2. Consider setting up HTTPS with a custom domain
3. Configure proper backup solutions for your data
