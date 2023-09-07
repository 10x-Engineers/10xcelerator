class c_1056_1;
    integer i = -174;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1056_1;
    c_1056_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zzx1zzz10z1zx1x1zz1zxx011x0z1xzxzxzxxzzxxxzxzzxzxxzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
