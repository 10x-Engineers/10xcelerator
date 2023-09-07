class c_679_1;
    integer i = 679;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_679_1;
    c_679_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001x0xz1000zxz0x0zxz0x00x0zx0z0zzzxzxzxxxxzzxxxzxxxzzzxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
