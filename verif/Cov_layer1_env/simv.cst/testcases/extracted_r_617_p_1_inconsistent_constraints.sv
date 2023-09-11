class c_617_1;
    integer i = -615;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_617_1;
    c_617_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0xz0xz0z011x1z010zxx00x101zz1xxzzzzzxzxzxxzzxzzzxzzxzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
