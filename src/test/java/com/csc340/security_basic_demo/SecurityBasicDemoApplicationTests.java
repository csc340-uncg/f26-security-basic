package com.csc340.security_basic_demo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.containsString;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
class SecurityBasicDemoApplicationTests {

  @Autowired
  private MockMvc mockMvc;

  @Test
  @WithMockUser(username = "obiwan", roles = "KNIGHT")
  void knightCanViewModButNotAdmin() throws Exception {
    mockMvc.perform(get("/mod"))
        .andExpect(status().isOk())
        .andExpect(content().string(containsString("MOD Content")))
        .andExpect(content().string(containsString("Hello, obiwan!")));

    mockMvc.perform(get("/admin"))
        .andExpect(status().isForbidden());
  }

  @Test
  @WithMockUser(username = "quigon", roles = "MASTER")
  void masterCanViewModAndAdmin() throws Exception {
    mockMvc.perform(get("/mod"))
        .andExpect(status().isOk())
        .andExpect(content().string(containsString("MOD Content")))
        .andExpect(content().string(containsString("Hello, quigon!")));

    mockMvc.perform(get("/admin"))
        .andExpect(status().isOk())
        .andExpect(content().string(containsString("ADMIN Content")))
        .andExpect(content().string(containsString("Hello, quigon!")));
  }

  @Test
  @WithMockUser(username = "anakin", roles = "PADAWAN")
  void padawanCannotViewModOrAdmin() throws Exception {
    mockMvc.perform(get("/mod"))
        .andExpect(status().isForbidden());

    mockMvc.perform(get("/admin"))
        .andExpect(status().isForbidden());
  }

}
