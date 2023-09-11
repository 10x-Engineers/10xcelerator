class c_330_1;
    integer i = 330;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_330_1;
    c_330_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01zxxx00x0z01x111z00x11xzxx110zzxzxzxzzzxzxxzzzxxxxzzxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
