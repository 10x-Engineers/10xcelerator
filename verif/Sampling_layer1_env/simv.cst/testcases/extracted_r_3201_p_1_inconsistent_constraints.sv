class c_3201_1;
    integer i = -532;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3201_1;
    c_3201_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zxx110z110z0z0z0z1z1z01xx10z1zzxxxzxxxxxzzzzzzzzxxzzzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
