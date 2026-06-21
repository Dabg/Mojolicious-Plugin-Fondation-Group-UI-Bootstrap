package Mojolicious::Plugin::Fondation::Group::UI::Bootstrap;
use Mojo::Base 'Mojolicious::Plugin', -signatures;

# ABSTRACT: Web UI extension for Fondation::Group — injects group checkboxes into user forms

our $VERSION = '0.01';

sub fondation_meta {
    return {
        dependencies => ['Fondation::Group', 'Fondation::Layout::Bootstrap'],
        defaults     => {
            title => 'Group Management UI',
        },
    };
}

sub register ($self, $app, $conf) {

    $app->routes->get('/groups')->to(
        controller => 'Group',
        action     => 'list'
    );

    return $self;
}

1;
