class c_1334_1;
    integer i = -221;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1334_1;
    c_1334_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xzz0z0xx1011x0z1zz11x1z0100z1xxxzzxxxxxxzxxzxzxzzzxxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
