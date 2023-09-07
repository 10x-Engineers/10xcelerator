class c_2962_1;
    integer i = -492;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2962_1;
    c_2962_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx000x10z100zx1xz10zzxzz000z01zxxxzzxzxzzxzxxxxzxzzxxzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
