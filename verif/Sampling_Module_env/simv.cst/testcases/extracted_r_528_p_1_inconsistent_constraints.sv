class c_528_1;
    integer i = 528;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_528_1;
    c_528_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xz0z110zxz1z00x0z1z1z0zzzx1x0zxxxxxxzzxxxxzxxzzzzzxxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
