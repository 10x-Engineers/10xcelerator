class c_3339_1;
    integer i = -555;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3339_1;
    c_3339_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10z00xzxzx0010011x100z0xx11zzxxxzzxxzxxxzzxzxxxzzzzzzxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
