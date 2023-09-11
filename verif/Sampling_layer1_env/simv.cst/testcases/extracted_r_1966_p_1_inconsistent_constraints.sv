class c_1966_1;
    integer i = -326;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1966_1;
    c_1966_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz11xx0z01xx1xx1xz0xz0z100zzx0zxzxxzxzzzxzxzzxxzzzxxzxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
