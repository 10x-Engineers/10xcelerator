class c_811_1;
    integer i = -134;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_811_1;
    c_811_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11z11xz0z11xx1xx0zzzzx11zzz111zxxxzxxxxxxzzzzxxzzxxzxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
