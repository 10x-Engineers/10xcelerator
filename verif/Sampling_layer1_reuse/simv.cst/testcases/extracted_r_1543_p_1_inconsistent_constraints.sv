class c_1543_1;
    integer i = -256;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1543_1;
    c_1543_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011x000x11z111x11zz1x1zzx0zz0x1xzxzzzxxxxzxxxxxxzxzxxxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
