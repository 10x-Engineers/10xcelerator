class c_2541_1;
    integer i = -422;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2541_1;
    c_2541_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz10xzz11zzz0zzzzx0100011111xx0xzzzxxxzxxxxxzxzxxzzxzzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
