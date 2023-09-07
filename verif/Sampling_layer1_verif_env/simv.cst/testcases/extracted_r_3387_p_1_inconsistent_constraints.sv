class c_3387_1;
    integer i = -563;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3387_1;
    c_3387_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x001z1001101zzxxzz0z1zzzzxx0zzzzzzzxzzxzxzxxxzxxzxzxxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
