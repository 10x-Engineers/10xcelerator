class c_667_1;
    integer i = 667;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_667_1;
    c_667_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz1z0z1xzz00x1x1x11z0x1x0xz00zzzxxxxzzzzzzzzxzxzxxxxxzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
