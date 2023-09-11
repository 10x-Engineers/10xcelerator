class c_2448_1;
    integer i = -406;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2448_1;
    c_2448_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z00010z10zzxx11100zxx001x0z0zxzzzzxxxzzxxzzzxxxzxxxzxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
