class c_193_1;
    integer i = -191;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_193_1;
    c_193_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzx0x01x0x11xzx11zxxzxzxzx0z10xxzxxxzzzxzzxxxzxzxxxxzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
