class c_2742_1;
    integer i = -455;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2742_1;
    c_2742_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz0xz1x0xx010zz0010xx00xz00z00zzxzxxxxxxzzxxxxxxxxxxxzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
