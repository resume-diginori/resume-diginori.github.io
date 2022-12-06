<template>
  <v-card
    color="grey darken-3"
    dark
  >
    <v-card-text>
      <avatar />
      <div class="text-sm-center mb-4 mt-3">
        <h1>
          Tom <span class="light-blue--text text--lighten-3">Sawyer</span>
        </h1>
        <span>
          an adventurous person
        </span>
      </div>

      <sidebar-section :options="sections.info" />
      <sidebar-section :options="sections.logs" />
      <sidebar-section :options="sections.hobbies">
        <template v-slot:item="{ item }">
          <v-chip>
            <v-avatar>
              <v-icon>
                {{ item.icon }}
              </v-icon>
            </v-avatar>
            {{ item.text }}
          </v-chip>
        </template>
      </sidebar-section>
      <sidebar-section :options="sections.skill">
        <template v-slot:items="{ items }">
          <v-container pa-0>
            <v-layout
              wrap
              class="text-xs-center"
            >
              <template v-for="(item, i) in items">
                <v-flex
                  :key="i"
                  md3
                  sm4
                  xs6
                >
                  <v-progress-circular
                    rotate="360"
                    size="65"
                    width="2"
                    :value="item.value"
                    color="white"
                    class="ma-2"
                  >
                    {{ item.text }}
                  </v-progress-circular>
                </v-flex>
              </template>
            </v-layout>
          </v-container>
        </template>
      </sidebar-section>
    </v-card-text>
  </v-card>
</template>

<script>
import Avatar from '@/views/dark-template/sidebar/Avatar'
import SidebarSection from '@/views/dark-template/sidebar/Section'
export default {
  name      : 'Sidebar',
  components: { SidebarSection, Avatar },
  data () {
    return {
      sections: {
        info: {
          title: 'INFO',
          items: [
            {
              name: 'linkedin',
              icon: 'mdi-linkedin',
              text: '@diginori',
            },
            {
              name: 'live',
              icon: 'mdi-map-marker',
              text: 'Heal the World',
            },
          ],
        },
        logs: {
          title: 'LOGS',
          items: [
            {
              icon: 'mdi-math-log',
              text: 'loG.diginori.com',
              link: 'https://loG.diginori.com',
            },
            {
              icon: 'mdi-post',
              text: 'blog.diginori.com',
              link: 'https://blog.diginori.com',
            },
            {
              icon: 'mdi-newspaper-variant-multiple',
              text: 'Tom and datayanolja in the news',
              link: 'https://byline.network/2017/10/11-5/',
            },
          ],
        },
        hobbies: {
          title: 'HOBBIES',
          items: [

            {
              icon: 'mdi-swim',
              text: 'sea swimming',
            },
            {
              icon: 'mdi-bike',
              text: 'cycling',
            },
            {
              icon: 'mdi-image-filter-hdr',
              text: 'minimal camping',
            },
            {
              icon: 'mdi-alpha-p-circle',
              text: 'physics',
            },
            {
              icon: 'mdi-music',
              text: 'digiNORI.com',
            },
          ],
        },
        skill: {
          title: 'SKILL',
          items: [
            {
              text : 'python',
              value: 90,
            },
            {
              text : 'cloud',
              value: 90,
            },
            {
              text : 'docker',
              value: 80,
            },
            {
              text : 'js',
              value: 70,
            },
            {
              text : 'ruby',
              value: 60,
            },
            {
              text : 'java',
              value: 50,
            },
          ],
        },
      },
    }
  },
}
</script>

<style scoped>
.sidebar {
  background: #2e2e2e;
}
</style>
