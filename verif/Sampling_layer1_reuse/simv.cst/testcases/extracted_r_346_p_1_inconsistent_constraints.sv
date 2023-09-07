class c_346_1;
    integer i = -56;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_346_1;
    c_346_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10x010x1xz0x00xxx1xxzzx0zzxx1xzxzxzzxxzzzzzzzzzxxxxxxzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
