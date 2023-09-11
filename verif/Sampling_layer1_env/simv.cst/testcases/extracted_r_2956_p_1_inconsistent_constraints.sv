class c_2956_1;
    integer i = -491;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2956_1;
    c_2956_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0z1z00zzz0xxzxx01xz0zz0x0zxx0xxzzxzzxxxzzzxzzzxxxxxxxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
