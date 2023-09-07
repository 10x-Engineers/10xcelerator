class c_2762_1;
    integer i = -459;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2762_1;
    c_2762_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz1x1zz1xz01zxx0x0010zxxzxzxx0zzxzzzxzzzzxxzxzzzzzzxxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
