class c_3445_1;
    integer i = -573;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3445_1;
    c_3445_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zz0x0100xzzz0zzzzx0zx1x1xxx1xzxzxxzzzxzxzzzxxxzzxxxzzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
