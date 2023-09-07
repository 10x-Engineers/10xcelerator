class c_3222_1;
    integer i = -535;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3222_1;
    c_3222_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx1z0zzxxxzxz000xz01xxz001z00xxzzzzxxzxzzzzzxzzxzzxzxzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
